# midimerge
This tool allows you to merge SMF MIDI files. The files are appended to each other.

## Warning
Deprecated, not needed in the current music pipeline.

## Usage

    midimerge -s 10 -o out.mid *.mid

This will merge all MIDI files in the current directory into `out.mid` with a spacing of 10 seconds.

## Build
`midimerge` depends on [libsmf](https://sourceforge.net/projects/libsmf/).

    mkdir build && cd build
    cmake ..
    make

## Limitations
During this process some information will get lost, like tempo changes. For my purposes this is actually desirable, so importing it into Ardour 4 does not require manually adjusting the tempo.
