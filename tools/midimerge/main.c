#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include <smf.h>

#define MIDI_MAX_TRACKS 16

void fail_with_help(char* argv[])
{
    fprintf(stderr, "Usage: %s [-s spacing] -o output input_file(s)\n", argv[0]);
    exit(EXIT_FAILURE);
}

int main(int argc, char* argv[])
{
    int opt, ret, file_nr = 0;
    double spacing = 5, finished_duration = 0, event_destination;
    const char* output = NULL;
    smf_t *out_smf, *in_smf;
    smf_track_t* out_track[MIDI_MAX_TRACKS] = { NULL };
    smf_event_t *in_event, *out_event;

    while ((opt = getopt(argc, argv, "s:o:")) != -1) {
        switch (opt) {
        case 's':
            spacing = atof(optarg);
            break;
        case 'o':
            output = optarg;
            break;
        default:
            fail_with_help(argv);
        }
    }

    if (output == NULL) {
        fail_with_help(argv);
    }

    out_smf = smf_new();
    if (out_smf == NULL) {
        fprintf(stderr, "Could not create SMF\n");
        exit(EXIT_FAILURE);
    }

    while (optind < argc) {
        in_smf = smf_load(argv[optind]);
        if (in_smf == NULL) {
            fprintf(stderr, "Could not load file '%s'\n", argv[optind]);
            exit(EXIT_FAILURE);
        }

        while ((in_event = smf_get_next_event(in_smf)) != NULL) {
            if (smf_event_is_metadata(in_event))
                continue;

            if (out_track[in_event->track_number] == NULL) {
                out_track[in_event->track_number] = smf_track_new();
                if (out_track[in_event->track_number] == NULL) {
                    fprintf(stderr, "Could not create SMF track\n");
                    exit(EXIT_FAILURE);
                }
                smf_add_track(out_smf, out_track[in_event->track_number]);
            }

            out_event = smf_event_new_from_pointer(in_event->midi_buffer, in_event->midi_buffer_length);

            event_destination = finished_duration + (spacing * file_nr) + in_event->time_seconds;
            smf_track_add_event_seconds(out_track[in_event->track_number], out_event, event_destination);
        }

        finished_duration += smf_get_length_seconds(in_smf);
        smf_delete(in_smf);
        optind++;
        file_nr++;
    }

    ret = smf_save(out_smf, output);
    if (ret) {
        fprintf(stderr, "Could not save SMF\n");
        exit(EXIT_FAILURE);
    }

    smf_delete(out_smf);

    return EXIT_SUCCESS;
}
