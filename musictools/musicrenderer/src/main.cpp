/**
 * Copyright (C) 2017 Christian Friedrich Coors
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include <cstdlib>
#include <cstring>
#include <iostream>
#include <map>
#include <sstream>
#include <vector>

#include <INIReader.h>
#include <smf.h>

#include "gminstruments.h"
#include "loguru.hpp"
#include "synthesizers/synthesizer.h"

#define MIDI_MAX_TRACKS 16

void usage()
{
    std::cerr << "Usage:\n";
    std::cerr << "\t" << loguru::argv0_filename() << " [-v n] outputdir inputdir1 [inputdir2 ...]\n\n";
    std::cerr << "This program generates music for OpenRCT2 from SMFs.\n";
    exit(EXIT_FAILURE);
}

void process_dir(const char* dir, const char* output_dir)
{
    std::stringstream settings_file_name{}, input_file_name{};
    std::string settings_file, input_file, output_file;
    long sample_rate;

    smf_t* in_smf;
    smf_event_t* in_event;

    std::map<int, std::vector<smf_event_t*>> event_mapping;
    std::map<int, Synthesizer*> synth_mapping;

    LOG_SCOPE_F(INFO, "Processing %s...", dir);

    settings_file_name << dir << "/rendersettings.ini";
    settings_file = settings_file_name.str();

    LOG_F(INFO, "Reading file %s...", settings_file.c_str());

    INIReader rendersettings{ settings_file };
    if (rendersettings.ParseError() < 0) {
        LOG_F(ERROR, "Can not read or parse rendersettings.ini!");
        return;
    }

    input_file = rendersettings.Get("general", "input_file", "in.mid");
    output_file = rendersettings.Get("general", "output_file", "out.wav");
    sample_rate = rendersettings.GetInteger("general", "sample_rate", 48000);

    LOG_F(INFO, "Rendering %s to %s, sample rate %d", input_file.c_str(), output_file.c_str(), sample_rate);

    input_file_name << dir << "/" << input_file;
    in_smf = smf_load(input_file_name.str().c_str());

    if (in_smf == nullptr) {
        LOG_F(ERROR, "Can not read or parse input file!");
        return;
    }

    while ((in_event = smf_get_next_event(in_smf)) != NULL) {
        //         LOG_F(INFO, "Got event at %f on track %d", in_event->time_seconds, in_event->track_number);

        if (smf_event_is_metadata(in_event)) {
            continue;
        }

        if (in_event->track_number >= MIDI_MAX_TRACKS) {
            LOG_F(WARNING, "Found invalid track in SMF!");
        }
    }

    for (const std::string& section : rendersettings.Sections()) {
        if (section.find("synth.") == 0) {
            Synthesizer* synth = make_synthesizer(rendersettings, section);
            if (synth != nullptr) {
                LOG_F(INFO, "Deleting synth!");
                delete synth;
            }
        }
    }

    smf_delete(in_smf);
}

int main(int argc, char* argv[])
{
    char* output_dir;

    loguru::g_stderr_verbosity = loguru::Verbosity_WARNING;
    loguru::init(argc, argv);
    LOG_SCOPE_FUNCTION(INFO);

    if (argc < 3)
        usage();

    output_dir = argv[1];

    for (int i = 2; i < argc; i++) {
        process_dir(argv[i], output_dir);
    }

    loguru::shutdown();
    return EXIT_SUCCESS;
}
