\version "2.18.2"
\include "articulate.ly"
#(define ac:normalFactor '(7 . 8))

\header {
  dedication = "OpenRCT2-OpenMusic"
  title = "Overture to Poet and Peasant"
  arranger = "Christian Friedrich Coors"
  subtitle = "Dichter und Bauer"
  composer = "Franz von Suppé"
  tagline = "https://www.github.com/ccoors/OpenRCT2-OpenMusic"
  copyright = "Arrangement CC-BY-SA 4.0 https://creativecommons.org/licenses/by-sa/4.0/"
}

\paper {
  #(set-paper-size "a4")
  left-margin = 2\cm
}

global = {
  \key d \major
  \time 4/4
}

second_melody = \relative c'' {
  \global
  
  fis4. fis16 fis fis8 fis16 fis fis8 fis16 fis
  fis2\( fis4\) r8 fis16 fis
  fis4.\( fis8 a8. g16 e8. g16
  fis2 d4\) r
  
  d4. d16 d d8 d16 d d8 fis16 fis
  fis2 d4 fis
  e1
  e2. r4
  
  \repeat unfold 2 {
    <b d fis>4. <b d fis>16 <b d fis> <b d fis>4 <b d fis>
    <a cis a'>1
  }
  
  r1
  \tuplet 3/2 { d8 a' g } \tuplet 3/2 { fis e d } \tuplet 3/2 { cis b a } \tuplet 3/2 { gis a d }
  a'2 a,
  r4 d4~ d8.\( cis16 d8. e16\)
  fis2\( d4 fis\)
  g2\( d4 e\)
  fis2 r4 \tuplet 3/2 { fis8 a g }
  fis2\( e4\) \tuplet 3/2 { e8 g fis }
  e2\( d4\) fis8 f
  e8.\( a16 \tuplet 3/2 { cis8 b a } \tuplet 3/2 { gis eis fis } \tuplet 3/2 { cis d b\) }
  a4 b'2\( a8. g16\)
  fis2\( d8. cis16 d8. e16\)
  fis2\( d4\) fis
  g2\( d4 e
  fis2\) r4 \tuplet 3/2 { fis8 a g }
  fis2\( e4\) \tuplet 3/2 { e8 g fis }
  e8\( d\) fis4\( fis8 e fis g\)
  g8. fis16 \acciaccatura a8 g8. fis16 fis e cis'4.
  b8 ais16 b fis g gis, a fis'4. e8
  
  d4 \tuplet 3/2 { r8 <fis, a> <eis gis> } \tuplet 3/2 { <g b>8 <fis a>4~ } \tuplet 3/2 { <fis a>8 <fis d'> <eis cis'> }
  \tuplet 3/2 { <g e'>8 <fis d'>4 } \tuplet 3/2 { <fis d'>8 <a fis'> <g e'> } \tuplet 3/2 { <g e'> <fis d'> <a cis> } \tuplet 3/2 { <a cis> <g b> <fis a> }
  \tuplet 3/2 { <fis a>8 <e g>4\( } g'4\)~ g8.\( fis16 e8. d16\)
  d8.\( cis16 fis8. e16\) a8.\( g16~ \tuplet 3/2 { \acciaccatura a8 g8 fis e\) }
  eis4\( \tuplet 3/2 { fis8\) <fis, a> <eis gis> } \tuplet 3/2 { <g b> <fis a>4~ } \tuplet 3/2 { <fis a>8 <fis d'> <eis cis'> }
  \tuplet 3/2 { <g e'>8 <fis d'>4~ } \tuplet 3/2 { <fis d'>8 <g fis'> <g e'> } \tuplet 3/2 { <g e'> <fis d'> <a cis> } \tuplet 3/2 { <a cis> <g b> <fis a> }
  \tuplet 3/2 { <fis a>8 <e g>4 } g'~ g8. fis16 e8. d16
  d8. cis16 fis8. e16 cis'8. b16~ \tuplet 3/2 { \acciaccatura cis8 b8 a g  }
  
  f2\( e8 f \tuplet 3/2 { a g f\) }
  g4\( f e8 f \tuplet 3/2 { a g f\) }
  <f, bes d f>4 <fis bes d fis> <g bes d g> <gis bes d gis>
  <a d fis a>2 \tuplet 3/2 { d'8 cis b } \tuplet 3/2 { a g fis }
  <a, cis fis>4\( <a cis e>\) b'2
  b~ b8 a g e
  d4 \tuplet 3/2 { r8 <fis, a> <eis gis> } \tuplet 3/2 { <g b> <fis a>4~ } \tuplet 3/2 { <fis a>8 <fis d'> <a cis> }
}

melody = \relative c'' {
  \global
  
  d,4. d16 d d8 a'16 a a8 d16 d
  d2\( a4\) r8 a16 a
  d4.\( a8 cis8. b16 g8. b16
  a2 fis4\) r
  
  fis4. fis16 fis fis8 b16 b b8 d16 d
  d2 b4 d
  cis2 \tuplet 3/2 { cis8\( d cis } \tuplet 3/2 { b8 cis b\) }
  b2\( a4\) r
  
  R1*4
  <a d fis>4. <a d fis>16 <a d fis> <a d fis>8 <d fis a>16 <d fis a> <d fis a>8 <d fis a d>16 <d fis a d>
  <d fis a d>1
  <fis, a d fis>2 <fis a d fis>4 <g a cis e>
  
  <fis a d>4 r r2
  r1
  b1\(
  a2\) r
}

left = \relative c' {
  \global
  
  <a d,>4. <a d,>16 <a d,> <a d,>8 <a d,>16 <a d,> <a d,>8 <a d,>16 <a d,>
  <a d,>2. r8 <a d,>16 <a d,>
  <a d,>2 <a e a,>4 <a e a,>
  <a d,>2. r4
  
  <b fis b,>4. <b fis b,>16 <b fis b,> <b fis b,>8 <b fis b,>16 <b fis b,> <b fis b,>8 <b fis b,>16 <b fis b,>
  <b fis b,>2 <b fis b,>4 <b fis b,>
  <cis a e>2 <cis a e>4 <d gis, e>
  <d gis, e>2\( <cis a>4\) r
  
  \repeat unfold 2 {
    b,2 b4 b
    fis2 fis'4 fis
  }
  
  <fis a d>4. <fis a d>16 <fis a d> <fis a d>8 <fis a d>16 <fis a d> <fis a d>8 <fis a d>16 <fis a d>
  <fis a d>1
  <d fis a>2 <d fis a>4 <e a cis>
  
  \repeat unfold 2 {
    \tuplet 3/2 { d8( fis a } \tuplet 3/2 { d a fis) } \tuplet 3/2 { d( fis a } \tuplet 3/2 { d a fis) }
  }
  \tuplet 3/2 { d8( g b } \tuplet 3/2 { d b g) } \tuplet 3/2 { d( g b } \tuplet 3/2 { d b g) }
  \tuplet 3/2 { d8( fis a } \tuplet 3/2 { d a fis) } \tuplet 3/2 { d( fis a } \tuplet 3/2 { d a fis) }
  \tuplet 3/2 { a( cis e } \tuplet 3/2 { a e cis) } \tuplet 3/2 { ais( cis e } \tuplet 3/2 { fis e cis) }
  \tuplet 3/2 { b( d fis } \tuplet 3/2 { b fis d) } \tuplet 3/2 { gis,( d' e } \tuplet 3/2 { b' e, d) }
  \tuplet 3/2 { a( cis e } \tuplet 3/2 { a e cis) } \tuplet 3/2 { e,( d' e } \tuplet 3/2 { gis e d) }
  \tuplet 3/2 { a( cis e } \tuplet 3/2 { a e cis) } \tuplet 3/2 { cis( e, g } \tuplet 3/2 { a g e) }
  \repeat unfold 2 { \tuplet 3/2 { d( fis a } \tuplet 3/2 { d a fis) } \tuplet 3/2 { d( fis a } \tuplet 3/2 { d a fis) } }
  \tuplet 3/2 { d( g b } \tuplet 3/2 { d b g) } \tuplet 3/2 { d( g bes } \tuplet 3/2 { d bes g) }
  \tuplet 3/2 { d( fis a } \tuplet 3/2 { d a fis) } \tuplet 3/2 { d( fis a } \tuplet 3/2 { d a fis) }
  \tuplet 3/2 { a( cis e } \tuplet 3/2 { a e cis) } \tuplet 3/2 { ais( cis e } \tuplet 3/2 { fis e cis) }
  \tuplet 3/2 { b( d fis } \tuplet 3/2 { b fis d) } \tuplet 3/2 { g,( e g } \tuplet 3/2 { b g e) }
  \tuplet 3/2 { a( d, fis } \tuplet 3/2 { a fis d) } <e g a cis>2
  R1
  \repeat unfold 4 { \tuplet 3/2 { r8 <fis a d> <fis a d> } <fis a d> r }
  \repeat unfold 2 { \tuplet 3/2 { r8 <e a cis> <e a cis> } <e a cis> r }
  \repeat unfold 2 { \tuplet 3/2 { r8 <e g a cis> <e g a cis> } <e g a cis> r }
  \repeat unfold 4 { \tuplet 3/2 { r8 <fis a d> <fis a d> } <fis a d> r }
  \repeat unfold 2 { \tuplet 3/2 { r8 <e a cis> <e a cis> } <e a cis> r }
  \repeat unfold 2 { \tuplet 3/2 { r8 <e g a cis> <e g a cis> } <e g a cis> r }
  
  \repeat unfold 2 { \repeat unfold 2 { \tuplet 3/2 { \repeat unfold 3 { <f bes d>8 } } } \repeat unfold 2 { \tuplet 3/2 { \repeat unfold 3 { <f a es'>8 } } } }
  \tuplet 3/2 { \repeat unfold 3 { <f bes d>8 } } \tuplet 3/2 { \repeat unfold 3 { <fis bes d>8 } } \tuplet 3/2 { \repeat unfold 3 { <g bes d>8 } } \tuplet 3/2 { \repeat unfold 3 { <gis bes d>8 } }
  <fis a d>1(
  <g cis e>)~
  <g cis e>(
  
  \tuplet 3/2 { r16) fis,( a } \tuplet 3/2 { d fis a } d8) r8 \tuplet 3/2 { r16 fis,,( a } \tuplet 3/2 { d fis a } d8) r8
}

pedal = \relative c {
  \global
  
  R1*12
  d1~
  \tuplet 3/2 { d8 a' g } \tuplet 3/2 { fis e d } \tuplet 3/2 { cis b a } \tuplet 3/2 { gis a d }
  a'2 a,
  d,8 r r4 d8 r r4 
  \repeat unfold 3 { d8 r r4 d8 r r4 }
  a'8 r r4 ais8 r r4
  b8 r r4 gis8 r r4
  a8 r r4 e8 r r4
  a8 r r4 cis,8 r r4
  \repeat unfold 4 { d8 r r4 d8 r r4 }
  a'8 r r4 ais8 r r4
  b8 r r4 g8 r r4
  a8 r r4 a2
  R1
  \repeat unfold 2 { d8 r r4 d8 r r4 }
  \repeat unfold 2 { a8 r r4 a8 r r4 }
  d,8 r r4 d'8 r r4
  d8 r r4 d8 r r4
  \repeat unfold 2 { a8 r r4 a8 r r4 }
  bes1~
  bes~
  bes(
  a~)
  a~
  a(
  
  d,16) r r8 r4 d16 r r8 r4
}

glockenspiel = \relative c'' {
  \global
  
}

drum = \drummode {
  R1*12
  
  \repeat tremolo 32 sna32
  \repeat tremolo 32 sna32
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
    \tempo 4=60
  }
}
