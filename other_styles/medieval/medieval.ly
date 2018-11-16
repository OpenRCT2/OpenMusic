\version "2.18.2"
\include "../../include/include.ly"

\header {
  dedication = "OpenRCT2/OpenMusic"
  title = "Abdelazer Suite"
  arranger = "Christian Friedrich Coors"
  subtitle = "2. Rondeau"
  composer = "Henry Purcell"
  tagline = "https://www.github.com/OpenRCT2/OpenMusic"
  copyright = "Arrangement CC-BY-SA 4.0 https://creativecommons.org/licenses/by-sa/4.0/"
}

global = {
  \key f \major
  \time 3/2
}

panflute_main_theme = \relative c' {
  d2 f a |
  d4 e8 f g f e d cis2 |
  a'4 d,8 f a f d4 bes'2 |
  g4 c,8 e g e c4 a'2 |
  f4 bes,8 d f d bes4 g'2 |
  e4 a,8 cis e cis a4 f'2 |
  e8 f e d cis4 f e8 f e d |
  a4 d cis8 d e d d2 |
}

panflute = \relative c' {
  \global
  \repeat volta 2 {
    \panflute_main_theme
  }
  \repeat volta 2 {
    f2 a c |
    f4 g8 a bes a g f e2 |
    a4 bes8 a g4 a8 g f4 f,8 g |
    a4 bes8 a g4 a8 g f4 f'8 e |
    d4 e8 d c4 d8 c bes4 g'8 f |
    e4 f8 e d4 e8 d c4 a'8 g |
    f4 g8 f e4 f8 e d4 g |
    c, f e8 f g f f2 |
  }
  \panflute_main_theme
  \repeat volta 2 {
    c4. d8 c d e4 f8 e d c |
    b4. c8 b c d4 e8 d c b |
    c4. d8 c d e4 f8 e d4 |
    c2.\prall b4 a2 |
    e'4. f8 e f g4 a8 g f e |
    f4. g8 f g a4 bes8 a g f |
    e4. f8 e f g4 a8 g f e |
    f4 g g4.\trill f16 g a2 |
  }
  \panflute_main_theme
}

ocarina_main_theme = \relative c' {
  a2 d e |
  f4 g8 a bes2 a |
  a d d |
  c1 c2 |
  bes1 bes2 |
  a1 a2 |
  bes a g |
  g4 f e g f d |
}

ocarina = \relative c' {
  \global
  \repeat volta 2 {
    \ocarina_main_theme
  }
  \repeat volta 2 {
    c2 f g |
    a4 bes8 c d2 c |
    c c c8 c, d4 |
    e2 d c4 a' |
    f2 f f4 bes8 a |
    g2 g g4 c8 bes |
    a2 a a4 bes8 a |
    g4 a bes g a2 |
  }
  \ocarina_main_theme
  \repeat volta 2 {
    e2 a a |
    gis1 gis2 |
    a1 a2 |
    a gis a |
    cis1 cis2 |
    d1 c2 |
    bes a a |
    a d cis |
  }
  \ocarina_main_theme
}

flute_main_theme = \relative c, {
  f2 a c |
  f,4 d' d g e2 |
  d2 f4 a g2 |
  g1 f2 |
  f1 e2 |
  e1 d2 |
  d4 g e cis d2 |
  cis4 d e g f d |
}

flute = \relative c {
  \global
  \repeat volta 2 {
    \flute_main_theme
  }
  \repeat volta 2 {
    a2 c e |
    a,4 f' f bes g2 |
    f c a4 b |
    c2 g a4 c |
    bes2 f4 c' d2 |
    e e e |
    f f f4 d |
    e f c2 c |
  }
  \flute_main_theme
  \repeat volta 2 {
    a2 f'4 c c e |
    e1 e2 |
    e1 d4 f |
    e1 cis2 |
    a'1 a2 |
    a2. f4 f d |
    e1 cis2 |
    d bes' e, |
  }
  \flute_main_theme
}

recorder_main_theme = \relative c {
  d2 d c |
  bes g' a |
  f1 g2 |
  e1 f2 |
  d d e |
  cis1 d2 |
  g, a bes |
  a1 d2 |
}

recorder = \relative c {
  \global
  \repeat volta 2 {
    \recorder_main_theme
  }
  \repeat volta 2 {
    f1 e2 |
    d bes c |
    f e d |
    c bes a' |
    bes a g |
    c, bes a' |
    d c bes |
    c c, f |
  }
  \recorder_main_theme
  \repeat volta 2 {
    a1 a,2 |
    e'1 e2 |
    a1 d,2 |
    e1 a2 |
    a1 a,2 |
    d1 d2 |
    cis1 a2 |
    d4 c bes2 a |
  }
  \recorder_main_theme
}

drum_theme = \drummode {
  sna2 sna4 sna8 sna <bd sna tamb>2 |
  \repeat unfold 5 {
    <bd sna tamb>2 sna4 sna8 sna <bd sna tamb>2 |
  }
  <bd sna tamb>2 sna sna |
  <bd sna>2 sna4 sna <bd sna tamb>2 |
}

drum = \drummode {
  \repeat volta 2 {
    \drum_theme
  }
  \repeat volta 2 {
    \drum_theme
  }
  \drum_theme
  \repeat volta 2 {
    \drum_theme
  }
  \drum_theme
}

panflutePart = \new Staff \with {
  instrumentName = "Pan Flute"
  shortInstrumentName = "Pfl."
  midiInstrument = "pan flute"
} \panflute

ocarinaPart = \new Staff \with {
  instrumentName = "Ocarina"
  shortInstrumentName = "Ocr."
  midiInstrument = "ocarina"
} \ocarina

flutePart = \new Staff \with {
  instrumentName = "Flute"
  shortInstrumentName = "Flt."
  midiInstrument = "flute"
} { \clef bass \flute }

recorderPart = \new Staff \with {
  instrumentName = "Recorder"
  shortInstrumentName = "Rcd."
  midiInstrument = "recorder"
} { \clef bass \recorder }

drumPart = \new DrumStaff \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Drums"
  shortInstrumentName = "Dr."
} \drum

\score {
  <<
    \panflutePart
    \ocarinaPart
    \flutePart
    \recorderPart
    \drumPart
  >>

  \layout { }
}

\score {
  \unfoldRepeats \articulate <<
    \panflutePart
    \ocarinaPart
    \flutePart
    \recorderPart
    \drumPart
  >>
  \midi {
    \tempo 4=165
  }
}
