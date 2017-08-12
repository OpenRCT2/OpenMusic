#include <math.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include <smf.h>

#define MIDI_MAX_TRACKS 16

void fail_with_help(char* argv[])
{
    fprintf(stderr, "Usage: %s [-s spacing] [-v] -o output input_file(s)\n", argv[0]);
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

int main(int argc, char* argv[])
{
    int opt, ret, file_nr = 0, hours, minutes, seconds;
    double spacing = 5, finished_duration = 0, event_destination, remaining;
    const char* output = NULL;
    bool verbose = false;
    smf_t *out_smf, *in_smf;
    smf_track_t* out_track[MIDI_MAX_TRACKS] = { NULL };
    smf_event_t *in_event, *out_event;

    while ((opt = getopt(argc, argv, "s:o:v")) != -1) {
        switch (opt) {
        case 's':
            spacing = atof(optarg);
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

    if (output == NULL) {
        fail_with_help(argv);
    }

    verbose_printf(verbose, "Creating SMF\n");
    out_smf = smf_new();
    if (out_smf == NULL) {
        fprintf(stderr, "Could not create SMF\n");
        exit(EXIT_FAILURE);
    }

    while (optind < argc) {
        verbose_printf(verbose, "Loading file '%s'\n", argv[optind]);
        in_smf = smf_load(argv[optind]);
        if (in_smf == NULL) {
            fprintf(stderr, "Could not load file '%s'\n", argv[optind]);
            exit(EXIT_FAILURE);
        }

        while ((in_event = smf_get_next_event(in_smf)) != NULL) {
            if (smf_event_is_metadata(in_event)) {
                continue;
            }

            if (in_event->track_number >= MIDI_MAX_TRACKS) {
                fprintf(stderr, "File '%s' contains invalid track (%d)!\n", argv[optind], in_event->track_number);
                exit(EXIT_FAILURE);
            }

            if (out_track[in_event->track_number] == NULL) {
                verbose_printf(verbose, "Creating SMF track %d\n", in_event->track_number);
                out_track[in_event->track_number] = smf_track_new();
                if (out_track[in_event->track_number] == NULL) {
                    fprintf(stderr, "Could not create SMF track\n");
                    exit(EXIT_FAILURE);
                }
                smf_add_track(out_smf, out_track[in_event->track_number]);
            }

            out_event = smf_event_new_from_pointer(in_event->midi_buffer, in_event->midi_buffer_length);

            event_destination = finished_duration + in_event->time_seconds;
            smf_track_add_event_seconds(out_track[in_event->track_number], out_event, event_destination);
        }

        finished_duration += smf_get_length_seconds(in_smf) + spacing;
        hours = finished_duration / 3600;
        minutes = fmod(finished_duration / 60, 60);
        seconds = fmod(finished_duration, 60);
        remaining = fmod(finished_duration, 1) * 1000;
        verbose_printf(verbose, "Total song length is now %'.5f seconds (%02d:%02d:%02d:%'.0f)\n", finished_duration, hours, minutes, seconds, remaining);
        smf_delete(in_smf);
        optind++;
        file_nr++;
    }

    verbose_printf(verbose, "Saving file\n");
    ret = smf_save(out_smf, output);
    if (ret) {
        fprintf(stderr, "Could not save SMF\n");
        exit(EXIT_FAILURE);
    }

    smf_delete(out_smf);

    verbose_printf(verbose, "Done\n");
    return EXIT_SUCCESS;
}
