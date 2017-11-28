#include <math.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include <smf.h>

#define MIDI_MAX_TRACKS 16
#define LILYPOND_MAX_PATCHES 128

void fail_with_help(char* argv[])
{
    fprintf(stderr, "Usage: %s [-k n [-k n2 ...]] [-p] [-m n] [-v] -o output input_file\n", argv[0]);
    exit(EXIT_FAILURE);
}

void verbose_printf(bool verbose, char* format, ...)
{
    va_list args;
    if (!verbose) {
        return;
    }

    va_start(args, format);
    printf("[VERBOSE] ");
    vprintf(format, args);
    va_end(args);
}

void process_file(const char* file, const char* output, bool verbose, bool* keep_track, bool keep_percussion, int map_percussion)
{
    smf_t *out_smf, *in_smf;
    smf_event_t *in_event, *out_event;
    smf_track_t *out_track[MIDI_MAX_TRACKS] = { NULL }, *some_track = NULL;
    unsigned char patches[MIDI_MAX_TRACKS] = { 0 };
    int percussion_track = -1;

    verbose_printf(verbose, "Creating SMF\n");
    out_smf = smf_new();
    if (out_smf == NULL) {
        fprintf(stderr, "Could not create SMF\n");
        exit(EXIT_FAILURE);
    }

    verbose_printf(verbose, "Loading file '%s'\n", file);
    in_smf = smf_load(file);
    if (in_smf == NULL) {
        fprintf(stderr, "Could not load file '%s'\n", file);
        exit(EXIT_FAILURE);
    }

    while ((in_event = smf_get_next_event(in_smf)) != NULL) {
        if (smf_event_is_metadata(in_event)) {
            continue;
        }

        if (in_event->track_number >= MIDI_MAX_TRACKS) {
            fprintf(stderr, "File contains invalid track number (%d)!\n", in_event->track_number);
            exit(EXIT_FAILURE);
        }

        if ((in_event->midi_buffer[0] & 0xF0) == 0xC0) {
            int channel = (in_event->midi_buffer[0] & 0x0F);
            unsigned char patch = in_event->midi_buffer[1];
            verbose_printf(verbose, "SMF Channel %d (track %d) switched to Patch %d\n", channel, in_event->track_number, patch);
            patches[in_event->track_number] = patch;

            if (channel == 9) {
                verbose_printf(verbose, "Identified percussion track\n");
                percussion_track = in_event->track_number;
                if (map_percussion != -1) {
                    in_event->midi_buffer[1] = map_percussion;
                }
            }
        }

        if ((keep_track[patches[in_event->track_number]]) || (keep_percussion && percussion_track != -1 && in_event->track_number == percussion_track)) {
            if (out_track[in_event->track_number] == NULL) {
                verbose_printf(verbose, "Creating SMF track %d\n", in_event->track_number);
                out_track[in_event->track_number] = smf_track_new();
                if (out_track[in_event->track_number] == NULL) {
                    fprintf(stderr, "Could not create SMF track\n");
                    exit(EXIT_FAILURE);
                }
                some_track = out_track[in_event->track_number];
                smf_add_track(out_smf, out_track[in_event->track_number]);
            }

            out_event = smf_event_new_from_pointer(in_event->midi_buffer, in_event->midi_buffer_length);
            smf_track_add_event_seconds(out_track[in_event->track_number], out_event, in_event->time_seconds);
        }
    }

    if (some_track != NULL) {
        verbose_printf(verbose, "Adding event 5 seconds after last note, so fluidsynth doesn't cut off the sound\n");
        out_event = smf_event_new_from_bytes(0b10110000 | some_track->track_number, 120, 0);
        smf_track_add_event_seconds(some_track, out_event, smf_get_length_seconds(in_smf) + 5.0);
    }

    verbose_printf(verbose, "Saving file\n");
    int ret = smf_save(out_smf, output);
    if (ret) {
        fprintf(stderr, "Could not save SMF\n");
        exit(EXIT_FAILURE);
    }
    smf_delete(out_smf);
}

int main(int argc, char* argv[])
{
    int opt;
    bool keep_track[LILYPOND_MAX_PATCHES] = { false };
    const char* output = NULL;
    bool verbose = false;
    bool keep_percussion = false;
    int map_percussion = -1;

    while ((opt = getopt(argc, argv, "k:pm:o:v")) != -1) {
        switch (opt) {
        case 'k': {
            int to_keep = atof(optarg);
            if (to_keep >= LILYPOND_MAX_PATCHES) {
                fprintf(stderr, "Invalid patch: %d\n", to_keep);
                exit(EXIT_FAILURE);
            }
            verbose_printf(verbose, "Adding patch to keep_track: %d\n", to_keep);
            keep_track[to_keep] = true;
        } break;
        case 'o':
            output = optarg;
            break;
        case 'p':
            keep_percussion = true;
            break;
        case 'm':
            map_percussion = atof(optarg);
            break;
        case 'v':
            verbose = true;
            break;
        default:
            fail_with_help(argv);
        }
    }

    if (output == NULL || optind != (argc - 1)) {
        fail_with_help(argv);
    }

    process_file(argv[argc - 1], output, verbose, keep_track, keep_percussion, map_percussion);

    verbose_printf(verbose, "Done\n");
    return EXIT_SUCCESS;
}
