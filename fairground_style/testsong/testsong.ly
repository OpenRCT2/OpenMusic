\version "2.18.2"
\include "../../include/include.ly"

\header {
  dedication = "OpenRCT2-OpenMusic"
  title = "Testsong"
  composer = "Christian Friedrich Coors"
  tagline = "https://www.github.com/ccoors/OpenRCT2-OpenMusic"
  copyright = "Arrangement CC-BY-SA 4.0 https://creativecommons.org/licenses/by-sa/4.0/"
}

global = {
  \key c \major
  \time 2/4
}

testMelody = {
  c8 d e f
  g a b c
}

melody = \relative c'' {
  \global
  \testMelody
}

second_melody = \relative c'' {
  \global
  R2*2
  \testMelody
}


left = \relative c {
  \global
  R2*4
  \testMelody
}


pedal = \relative c, {
  \global
  R2*6
  \testMelody
}

glockenspiel = \relative c'' {
  \global
  R2*2
  r8
  \testMelody
  r4.
  R2*3
  \testMelody
}

drum = \drummode {
  R2*10
  <bd sna>4 bd |
  sna <bd sna>
}

organPart = <<
  \new PianoStaff \with {
    instrumentName = "Organ"
    shortInstrumentName = "Org."
  } <<
    \new Staff = "melody" \with {
      midiInstrument = \melodyInstrument
    } \melody
    \new Staff = "second melody" \with {
      midiInstrument = \secondMelodyInstrument
    } \second_melody
    \new Staff = "accompaniment" \with {
      midiInstrument = \accompanimentInstrument
    } { \clef bass \left }
    \new Staff = "pedal" \with {
      midiInstrument = \pedalInstrument
    } { \clef bass \pedal }
  >>
>>

glockenspielPart = \new Staff \with {
  instrumentName = "Glockenspiel"
  shortInstrumentName = "Gls."
  midiInstrument = \glockenspielInstrument
} \glockenspiel

drumPart = \new DrumStaff \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Drums"
  shortInstrumentName = "Dr."
} \drum

\score {
  <<
    \organPart
    \glockenspielPart
    \drumPart
  >>
  
  \layout { }
}

\score {
  \unfoldRepeats \articulate <<
    \organPart
    \glockenspielPart
    \drumPart
  >>
  \midi {
    \tempo 4=95
  }
}
