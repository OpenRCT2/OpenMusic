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

#include <iostream>

#include "../loguru.hpp"

#include "synth_fluid.h"
#include "synthesizer.h"

Synthesizer::Synthesizer() {}

Synthesizer::~Synthesizer() {}

Synthesizer* make_synthesizer(INIReader& reader, const std::string& section)
{
    LOG_SCOPE_F(INFO, "Creating synthesizer %s...", section.c_str());

    std::string type = reader.Get(section, "type", "");
    if (type == "fluidsynth") {
        LOG_F(INFO, "FluidSynth synthesizer");
        return new Synthesizer_Fluid(reader, section);
    } else if (type == "organsamples") {
        LOG_F(INFO, "Organ samples synthesizer");
        return nullptr; // TODO
    } else {
        LOG_F(ERROR, "Unknown synthesizer type: %s!", type.c_str());
        return nullptr;
    }
}
