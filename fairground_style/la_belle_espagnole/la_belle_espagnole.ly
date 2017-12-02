\version "2.18.2"
\include "../../include/include.ly"

\header {
  dedication = "OpenRCT2-OpenMusic"
  title = "La Belle Espagnole"
  arranger = "Christian Friedrich Coors"
  subtitle = "Die Schöne Spanierin/Grande Valse espagnole Op. 103"
  composer = "Robert Vollstedt"
  tagline = "https://www.github.com/ccoors/OpenRCT2-OpenMusic"
  copyright = "Arrangement CC-BY-SA 4.0 https://creativecommons.org/licenses/by-sa/4.0/"
}

global_presto = {
  \key e \minor
  \time 6/8
  \partial 4
}

global_andante = {
  \time 9/8
  \set Score.tempoHideNote = ##t
  \tempo 4 = 95
}

melody = \relative c'' {
  \global_presto
  
  b'8\mark "Presto" a |
  g\trill fis e d c b |
  a\trill g fis e d c |
  \repeat unfold 2 { b8 c4 b8 c4 | }
  b4 r8 <b dis fis b>8 <b dis fis b>4~ |
  <b dis fis b>2. |
  
  \global_andante
  r8\mark "Andante" r2 r8 <b' b'>4 <b b'>8 |
  <b b'>4.~ <b b'>8 <g g'> <e e'> <fis fis'> <a a'> <c c'> |
  <b b'>2. <g' g'>4( <fis fis'>8) |
  <e e'> <d d'> <c c'> <b b'> <a a'> <g g'> <fis fis'> <g g'> <a a'> |
  <b b'>2. <b b'>4 <b b'>8 |
  <b b'>( <dis, dis'> <fis fis'>) <c' c'>( <b b'> <ais ais'>) <b b'>( <fis fis'>8. <b b'>16) |
  <a a'>4.( <g g'>) <g g'> |
  <fis fis'>8 <e e'> <dis dis'> <e e'> <fis fis'> <g g'> <a a'> <b b'> <c c'> |
  <b b'>2. <b b'>4 <b b'>8 |
  <b b'>4.~ <b b'>8 <g g'> <e e'> <fis fis'> <a a'> <c c'> |
  <b b'>2. <g' g'>4( <fis fis'>8) |
  <e e'> <d d'> <c c'> <b b'> <a a'> <g g'> <fis fis'> <g g'> <a a'> |
  <b b'>2. <b b'>4 <b b'>8 |
  <b b'>8 <a a'> <gis gis'> <a a'> <b b'> <c c'> <cis cis'> <d d'> <dis dis'> |
  <e e'>4.( <d d'>8) <e e'>16( <d d'> <cis cis'> <d d'>) <fis fis'>4( <e e'>8) |
  <e e'>8( <d d'> <b b'> <g g'> <e e'> <c' c'>) <b b'>4( <a a'>8) |
  <g g'>8 \repeat unfold 8 { <g b d g> } |
  \repeat unfold 3 { \repeat unfold 9 { <g b d g> } | }
  <g b d g>2. r4. |
}

second_melody = \relative c'' {
  \global_presto
}

left = \relative c' {
  \global_presto
  
  b8 a |
  g\trill fis e d c b |
  a'\trill g fis e d c |
  \repeat unfold 2 { b8 c4 b8 c4 | }
  b4 r8 b8 b4~ |
  b2. |
  
  \global_andante
  r8 <e g b>16 <e g b> \repeat unfold 7 { <e g b>8 } |
  r8 <e g b>16 <e g b> \repeat unfold 4 { <e g b>8 } \repeat unfold 3 { <e a c> } |
  r8 <e g b>16 <e g b> \repeat unfold 7 { <e g b>8 } |
  r8 <e a c>16 <e a c> \repeat unfold 7 { <e a c>8 } |
  r8 <e g b>16 <e g b> \repeat unfold 7 { <e g b>8 } |
  r8 <dis fis b>16 <dis fis b> \repeat unfold 7 { <dis fis b>8 } |
  r8 <e g b>16 <e g b> \repeat unfold 7 { <e g b>8 } |
  r8 <c e a>16 <c e a> \repeat unfold 4 { <c e a>8 } \repeat unfold 3 { <c e fis> } |
  <b dis fis>8 <ais ais'> <a a'> <g g'> <fis fis'> <e e'> <dis dis'> <c c'> <b b'> |
  
  r8 <e' g b>16 <e g b> \repeat unfold 4 { <e g b>8 } \repeat unfold 3 { <e a c> } |
  r8 <e g b>16 <e g b> \repeat unfold 7 { <e g b>8 } |
  r8 <e a c>16 <e a c> \repeat unfold 7 { <e a c>8 } |
  r8 <e g b>16 <e g b> \repeat unfold 7 { <e g b>8 } |
  r8 <d fis c'>16 <d fis c'> \repeat unfold 7 { <d fis c'>8 } |
  r8 <d g b>16 <d g b> \repeat unfold 4 { <d g b>8 } \repeat unfold 3 { <cis e g bes> } |
  r8 <d g b>16 <d g b> \repeat unfold 4 { <d g b>8 } \repeat unfold 3 { <d fis c'> } |
  <g g,>2. <g g,>8 <fis fis,> <g g,> |
  <fis fis,>4.( <e e,>) <fis fis,>8 <e e,> <fis fis,> |
  <e e,>4.( <d d,>) <e e,>8 <d d,> <b b,> |
  <a' a,>4. <g g,> <d d,> |
  <g g,>2. r4. |
}

pedal = \relative c {
  \global_presto
  r4 |
  R2.*6 |
  
  \global_andante
  e2 r4 b4. |
  e2 r4 c4. |
  e2 r4 b4. |
  a2 r4 a4. |
  e'2 r4 e4. |
  b2 r4 b4. |
  e2 r4 b4. |
  c2 r4 c4. |
  b2 r4 b4. |
  
  e2 r4 c4. |
  e2 r4 b4. |
  a2 r4 a4. |
  e'2 r4 e4. |
  d2 r4 d4. |
  g2 r4 cis,4. |
  d2 r4 d4. |
  g2. g8 fis g |
  fis4.( e) fis8 e fis |
  e4.( d) e8 d b |
  a4. g d |
  g2. r4. |
}

glockenspiel = \relative c'' {
  \global_presto
}

drum = \drummode {
  
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
  
  \header {
    piece = "Introduction"
  }
}

\score {
  \unfoldRepeats \articulate <<
    \organPart
    \glockenspielPart
    \drumPart
  >>
  \midi {
    \tempo 4=140
  }
}
