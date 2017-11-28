# midimerge
This tool allows you to split SMF MIDI files into groups of tracks.

## Usage

    midisplit -k 0 -k 1 -k 2 -p -m 48 -v -o out.mid in.mid

This will extracts the notes from MIDI file `in.mid` which have the patch numbers 0, 1 and 2 into out.mid. It also adds the percussion track (`-p`) and maps it to Drumkit 48 (`-m`), which in General MIDI Orchestral. This is needed, because we can't instruct LilyPond to use a specific patch, as only the General MIDI-Instruments are available and the GM-Standard is too limited for our purpose.

## Build
`midisplit` depends on [libsmf](https://sourceforge.net/projects/libsmf/).

    mkdir build && cd build
    cmake ..
    make
