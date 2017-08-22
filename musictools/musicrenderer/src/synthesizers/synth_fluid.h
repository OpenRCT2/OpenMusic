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

#ifndef SYNTH_FLUID
#define SYNTH_FLUID

#include <fluidsynth.h>

#include "synthesizer.h"

class Synthesizer_Fluid : public Synthesizer {
    std::string m_settings_soundfonts, m_settings_fluidsettings;

    fluid_settings_t* m_settings;
    fluid_synth_t* m_synth;

public:
    Synthesizer_Fluid(INIReader& reader, const std::string& section);
    ~Synthesizer_Fluid();

    void render(std::vector<smf_event_t*>& midi_events);
};

#endif
