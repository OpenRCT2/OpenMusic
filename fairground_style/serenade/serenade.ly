\version "2.18.2"
\include "articulate.ly"
#(define ac:normalFactor '(7 . 8))

\header {
  dedication = "OpenRCT2-OpenMusic"
  title = "Serenade, op. 21"
  arranger = "Christian Friedrich Coors"
  subtitle = "Ständchen"
  composer = "Jonny Heykens"
  tagline = "https://www.github.com/ccoors/OpenRCT2-OpenMusic"
  copyright = "Arrangement CC-BY-SA 4.0 https://creativecommons.org/licenses/by-sa/4.0/"
}

\paper {
  #(set-paper-size "a4")
  left-margin = 2\cm
}

global = {
  \key c \major
  \time 2/4
}

second_melody = \relative c'' {
  \global
  R2*4
  b4 g
  e b'8 a
  g4 f
  e2
  r2
  e'8 g, e'4
  f8 e d4
  c8 g e' c
  g4 g
}

melody = \relative c'' {
  \global
  e8 g, e' g,
  f' e d g,
  c4 c8 a
  a4 g
  f'8 g, d' e
  c4 g8 f
  e4 d
  c2
  r
  g'2~
  g~
  g
  b
}

left = \relative c' {
  \global
  r8 <c, e> <c e g> <c e g c>
  r <g b> <g b d> <g b d g>
  r <c e> <c e g> <c e g c>
  r <g b> <g b d> <g b d g>
  r <b d> <b d f> <b d f g>
  <c e g>4 <b d g>
  r8 <c e g> r <b d g>
  c <e g c> g, <e' g c>
  c <e g c> g, <e' g c>
  c <e g c> g, <e' g c>
  b <d g b> g, <d' g b>
  c <e g c> g, <e' g c>
  b <d g b> g, <d' g b>
}

pedal = \relative c, {
  \global
  
  c'8 r4 c8
  g r4 g8
  c r4 c8
  g r4 g8
  g2
  c4 g
  c g
  c8 r g r
  c r g r
  c r g r
  g' r d r
  c r g r
  g' r d r
}

glockenspiel = \relative c'' {
  \global
  
}

drum = \drummode {
  <bd sna>8 r4 <bd sna>8
  <bd sna> r4.
  <bd sna>8 r4 <bd sna>8
  <bd sna> r4.
  <bd sna>8 r4 <bd sna>8
  <bd sna> r4.
  r8 <bd sna> r <bd sna>
  <bd sna> r r4
}

organPart = <<
  \new PianoStaff \with {
    instrumentName = "Organ"
    shortInstrumentName = "Org."
  } <<
    \new Staff = "second melody" \with {
      midiInstrument = "drawbar organ"
    } \second_melody
    \new Staff = "melody" \with {
      midiInstrument = "church organ"
    } \melody
    \new Staff = "accompaniment" \with {
      midiInstrument = "reed organ"
    } { \clef bass \left }
  >>
  \new Staff = "pedal" \with {
    midiInstrument = "church organ"
  } { \clef bass \pedal }
>>

glockenspielPart = \new Staff \with {
  instrumentName = "Glockenspiel"
  shortInstrumentName = "Gls."
  midiInstrument = "vibraphone"
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
