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

#include "synth_fluid.h"

#include "../loguru.hpp"

Synthesizer_Fluid::Synthesizer_Fluid(INIReader& reader, const std::string& section)
    : Synthesizer()
{
    LOG_F(INFO, "Constructing FluidSynth synthesizer");
    m_settings_soundfonts = reader.Get(section, "soundfonts", "");
    m_settings_fluidsettings = reader.Get(section, "settings", "");

    m_settings = new_fluid_settings();

    m_synth = new_fluid_synth(m_settings);
}

Synthesizer_Fluid::~Synthesizer_Fluid()
{
    LOG_F(INFO, "Destructing FluidSynth synthesizer");
    delete_fluid_synth(m_synth);
    delete_fluid_settings(m_settings);
}

void Synthesizer_Fluid::render(std::vector<smf_event_t*>& midi_events)
{
}
