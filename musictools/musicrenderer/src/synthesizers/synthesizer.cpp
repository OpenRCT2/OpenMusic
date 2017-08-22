#include <iostream>

#include "../loguru.hpp"

#include "synthesizer.h"

Synthesizer* makeSynthesizer(INIReader& reader, const std::string& section)
{
    LOG_SCOPE_F(INFO, "Creating synthesizer %s...", section.c_str());

    std::string type = reader.Get(section, "type", "");
    if (type == "fluidsynth") {
        LOG_F(INFO, "FluidSynth synthesizer", section.c_str());
    } else if (type == "organsamples") {
        LOG_F(INFO, "Organ samples synthesizer", section.c_str());
    } else {
        LOG_F(ERROR, "Unknown synthesizer type: %s!", type.c_str());
        return nullptr;
    }
}
