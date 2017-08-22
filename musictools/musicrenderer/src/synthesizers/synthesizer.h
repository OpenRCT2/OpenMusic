#ifndef SYNTH_H
#define SYNTH_H

#include <vector>

#include <INIReader.h>
#include <smf.h>

/**
 * Abstract synthesizer class
 */
class Synthesizer {

public:
    Synthesizer();
    ~Synthesizer();

    virtual void render(std::vector<smf_event_t*>& midi_events) = 0;
};

Synthesizer* makeSynthesizer(INIReader& reader, const std::string& section);

#endif
