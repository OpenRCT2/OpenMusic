#include <stdarg.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include <smf.h>

#define MIDI_MAX_TRACKS 16
#define MIDI_PERCUSSION_CHANNEL 9
#define LILYPOND_MAX_PATCHES 128

typedef struct split_options_t {
    bool active;
    int map_from[LILYPOND_MAX_PATCHES];
    int map_to[LILYPOND_MAX_PATCHES];
    bool keep_percussion;
    unsigned char map_percussion;
    int from_index;
} split_options;

void fail_with_help(char* argv[])
{
    fprintf(stderr, "Usage: %s [-s [-f patch_in -t patch_out]* [[-p] [-m patch_percussion]]] [-v] [-a seconds] [-n] -o output input_file\n", argv[0]);
    exit(EXIT_FAILURE);
}

void verbose_printf(bool verbose, char* format, ...)
{
    va_list args;
    if (!verbose) {
        return;
    }

    va_start(args, format);
    vprintf(format, args);
    va_end(args);
}

void add_smf_event(const smf_event_t* in_event, smf_track_t* const* out_track)
{
    smf_event_t* out_event = smf_event_new_from_pointer(in_event->midi_buffer, in_event->midi_buffer_length);
    smf_track_add_event_seconds(out_track[in_event->track_number], out_event, in_event->time_seconds);
}

int find_index(const int map[], int search_for, int length)
{
    for (int i = 0; i < length; i++) {
        if (map[i] == search_for)
            return i;
    }
    return -1;
}

void process_file(const char* file, const char* output, bool verbose, const split_options* split_options, bool normalize, double add_seconds)
{
    smf_t *out_smf, *in_smf;
    smf_event_t* in_event;
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

        if (normalize && in_event->midi_buffer_length >= 1) {
            if ((in_event->midi_buffer[0] >> 4) == 0b1001) {
                if (in_event->midi_buffer_length == 3 && in_event->midi_buffer[2] != 0) {
                    in_event->midi_buffer[2] = 0b0111111;
                }
            }
        }

        if (!split_options->active) {
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

            add_smf_event(in_event, out_track);
        } else {
            bool force_add = false;
            if ((in_event->midi_buffer[0] & 0xF0) == 0xC0) { // Event is patch change
                int channel = (in_event->midi_buffer[0] & 0x0F);
                unsigned char patch = in_event->midi_buffer[1];
                verbose_printf(verbose, "SMF Channel %d (track %d) switched to Patch %d\n",
                    channel,
                    in_event->track_number, patch);
                patches[in_event->track_number] = patch;

                if (channel == MIDI_PERCUSSION_CHANNEL) {
                    verbose_printf(verbose, "Identified percussion track\n");
                    percussion_track = in_event->track_number;
                    if (split_options->keep_percussion) {
                        in_event->midi_buffer[1] = split_options->map_percussion;
                    }
                } else {
                    int to_index = find_index(split_options->map_from, patch, split_options->from_index);
                    if (to_index == -1) {
                        continue;
                    }

                    int map_to_patch = split_options->map_to[to_index];

                    if (map_to_patch != -1) {
                        in_event->midi_buffer[1] = map_to_patch;
                        force_add = true;
                    }
                }
            }

            int patch = patches[in_event->track_number];
            int to_index = find_index(split_options->map_from, patch, split_options->from_index);

            bool normal_event_should_be_mapped = to_index != -1; //split_options->map_from[patches[in_event->track_number]] != -1;
            bool percussion_event_should_be_mapped = split_options->keep_percussion && percussion_track != -1 && in_event->track_number == percussion_track;
            if (force_add || normal_event_should_be_mapped || percussion_event_should_be_mapped) {
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

                add_smf_event(in_event, out_track);
            }
        }
    }

    if (some_track == NULL) {
        out_track[0] = smf_track_new();
        if (out_track[0] == NULL) {
            fprintf(stderr, "Could not create SMF track\n");
            exit(EXIT_FAILURE);
        }
        some_track = out_track[0];
        smf_add_track(out_smf, out_track[0]);
    }

    verbose_printf(verbose, "Adding event %f seconds after last note event\n", add_seconds);
    smf_track_add_event_seconds(some_track,
        smf_event_new_from_bytes(0b10110000 | some_track->track_number, 120, 0),
        smf_get_length_seconds(in_smf) + add_seconds);

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
    const char* output = NULL;
    split_options split_options = {
        .active = false,
        .map_from = {},
        .map_to = {},
        .keep_percussion = false,
        .map_percussion = 0,
        .from_index = 0
    };
    double add_seconds = 5.0;
    bool verbose = false, normalize = false;

    for (int i = 0; i < LILYPOND_MAX_PATCHES; i++) {
        split_options.map_from[i] = -1;
        split_options.map_to[i] = -1;
    }

    while ((opt = getopt(argc, argv, "sf:t:pm:a:no:v")) != -1) {
        switch (opt) {
        case 's':
            split_options.active = true;
            break;
        case 'f': {
            if (!split_options.active) {
                fail_with_help(argv);
            }
            int map_from = atoi(optarg);
            if (map_from >= LILYPOND_MAX_PATCHES) {
                fprintf(stderr, "Invalid patch: %d\n", map_from);
                exit(EXIT_FAILURE);
            }
            verbose_printf(verbose, "Adding patch to map_from: %d\n", map_from);
            if (split_options.map_from[split_options.from_index] != -1) {
                fprintf(stderr, "You can't repeat -f without completing it without an -t\n");
                exit(EXIT_FAILURE);
            }
            split_options.map_from[split_options.from_index] = map_from;
        } break;
        case 't': {
            if (!split_options.active) {
                fail_with_help(argv);
            }
            int map_to = atoi(optarg);
            if (map_to >= LILYPOND_MAX_PATCHES) {
                fprintf(stderr, "Invalid patch: %d\n", map_to);
                exit(EXIT_FAILURE);
            }
            verbose_printf(verbose, "Adding patch to map_to: %d\n", map_to);
            if (split_options.map_from[split_options.from_index] == -1) {
                fprintf(stderr, "You can't use -f without starting -t\n");
                exit(EXIT_FAILURE);
            }
            split_options.map_to[split_options.from_index] = map_to;
            split_options.from_index++;
        } break;
        case 'p':
            if (!split_options.active) {
                fail_with_help(argv);
            }
            split_options.keep_percussion = true;
            break;
        case 'm':
            if (!split_options.active) {
                fail_with_help(argv);
            }
            split_options.map_percussion = atoi(optarg);
            break;
        case 'a':
            add_seconds = atof(optarg);
            break;
        case 'n':
            normalize = true;
            break;
        case 'o':
            output = optarg;
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

    process_file(argv[argc - 1], output, verbose, &split_options, normalize, add_seconds);

    verbose_printf(verbose, "Done\n");
    return EXIT_SUCCESS;
}
