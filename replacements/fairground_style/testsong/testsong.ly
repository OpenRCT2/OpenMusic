\version "2.18.2"
\include "../../include/include.ly"

\header {
  dedication = "OpenRCT2/OpenMusic"
  title = "Testsong"
  composer = "Christian Friedrich Coors"
  tagline = "https://www.github.com/OpenRCT2/OpenMusic"
  copyright = "Arrangement CC-BY-SA 4.0 https://creativecommons.org/licenses/by-sa/4.0/"
}

global = {
  \key c \major
  \time 2/4
}

testMelody = {
  <c e g c>2
  c8 d e f
  g f e d
  c16 d e f g f e d
  c32 d e f g f e d c d e f g f e d
  c64 d e f g f e d c d e f g f e d c d e f g f e d c d e f g f e d
}

melody = \relative c'' {
  \global
  <c e g c>16 <c e g c>4~ <c e g c>8.~
  <c e g c>2~
  <c e g c>
  R2

  \testMelody
}

second_melody = \relative c'' {
  \global
  <c e g c>16 <c e g c>4~ <c e g c>8.~
  <c e g c>2~
  <c e g c>

  R2*7
  \testMelody
}


left = \relative c {
  \global
  <c c'>16 <c c'>4~ <c c'>8.~
  <c c'>2~
  <c c'>

  R2*13
  \testMelody
}


pedal = \relative c, {
  \global
  <c c'>16 <c c'>4~ <c c'>8.~
  <c c'>2~
  <c c'>

  R2*19
  \testMelody
}

glockenspiel = \relative c' {
  \global
  R2
  <e e' e'>2
  <c c' c'>

  R2*25
  \testMelody
}

drum = \drummode {
  R2*2
  r4.
  <bd sna hh cymc tamb>8

  R2*31

  bd4 bd

  bd8 bd bd bd

  bd16 bd bd bd
  bd bd bd bd
  bd bd bd bd
  bd bd bd bd

  bd32 bd bd bd
  bd bd bd bd
  bd bd bd bd
  bd bd bd bd
  bd bd bd bd
  bd bd bd bd
  bd bd bd bd
  bd bd bd bd

  sna4 sna

  sna8 sna sna sna

  sna16 sna sna sna
  sna sna sna sna
  sna sna sna sna
  sna sna sna sna

  sna32 sna sna sna
  sna sna sna sna
  sna sna sna sna
  sna sna sna sna
  sna sna sna sna
  sna sna sna sna
  sna sna sna sna
  sna sna sna sna

  hh4 hh

  hh8 hh hh hh

  hh16 hh hh hh
  hh hh hh hh
  hh hh hh hh
  hh hh hh hh

  hh32 hh hh hh
  hh hh hh hh
  hh hh hh hh
  hh hh hh hh
  hh hh hh hh
  hh hh hh hh
  hh hh hh hh
  hh hh hh hh

  cymc4 cymc

  cymc8 cymc cymc cymc

  cymc16 cymc cymc cymc
  cymc cymc cymc cymc
  cymc cymc cymc cymc
  cymc cymc cymc cymc

  cymc32 cymc cymc cymc
  cymc cymc cymc cymc
  cymc cymc cymc cymc
  cymc cymc cymc cymc
  cymc cymc cymc cymc
  cymc cymc cymc cymc
  cymc cymc cymc cymc
  cymc cymc cymc cymc

  tamb4 tamb

  tamb8 tamb tamb tamb

  tamb16 tamb tamb tamb
  tamb tamb tamb tamb
  tamb tamb tamb tamb
  tamb tamb tamb tamb

  tamb32 tamb tamb tamb
  tamb tamb tamb tamb
  tamb tamb tamb tamb
  tamb tamb tamb tamb
  tamb tamb tamb tamb
  tamb tamb tamb tamb
  tamb tamb tamb tamb
  tamb tamb tamb tamb

  <bd sna hh cymc tamb>4 <bd sna hh cymc tamb>

  <bd sna hh cymc tamb>8 <bd sna hh cymc tamb> <bd sna hh cymc tamb> <bd sna hh cymc tamb>

  <bd sna hh cymc tamb>16 <bd sna hh cymc tamb> <bd sna hh cymc tamb> <bd sna hh cymc tamb>
  <bd sna hh cymc tamb> <bd sna hh cymc tamb> <bd sna hh cymc tamb> <bd sna hh cymc tamb>
  <bd sna hh cymc tamb> <bd sna hh cymc tamb> <bd sna hh cymc tamb> <bd sna hh cymc tamb>
  <bd sna hh cymc tamb> <bd sna hh cymc tamb> <bd sna hh cymc tamb> <bd sna hh cymc tamb>

  <bd sna hh cymc tamb>32 <bd sna hh cymc tamb> <bd sna hh cymc tamb> <bd sna hh cymc tamb>
  <bd sna hh cymc tamb> <bd sna hh cymc tamb> <bd sna hh cymc tamb> <bd sna hh cymc tamb>
  <bd sna hh cymc tamb> <bd sna hh cymc tamb> <bd sna hh cymc tamb> <bd sna hh cymc tamb>
  <bd sna hh cymc tamb> <bd sna hh cymc tamb> <bd sna hh cymc tamb> <bd sna hh cymc tamb>
  <bd sna hh cymc tamb> <bd sna hh cymc tamb> <bd sna hh cymc tamb> <bd sna hh cymc tamb>
  <bd sna hh cymc tamb> <bd sna hh cymc tamb> <bd sna hh cymc tamb> <bd sna hh cymc tamb>
  <bd sna hh cymc tamb> <bd sna hh cymc tamb> <bd sna hh cymc tamb> <bd sna hh cymc tamb>
  <bd sna hh cymc tamb> <bd sna hh cymc tamb> <bd sna hh cymc tamb> <bd sna hh cymc tamb>
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
