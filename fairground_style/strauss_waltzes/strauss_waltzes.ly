\version "2.18.2"
\include "articulate.ly"
#(define ac:normalFactor '(7 . 8))

\header {
  dedication = "OpenRCT2-OpenMusic"
  title = "Various Waltzes by Johann Strauß II"
  arranger = "Christian Friedrich Coors"
  subtitle = "Morgenblätter, Die Fledermaus, Rosen aus dem Süden, Wiener Blut, Donauwalzer"
  composer = "Johann Baptist Strauss"
  tagline = "https://www.github.com/ccoors/OpenRCT2-OpenMusic"
  copyright = "Arrangement CC-BY-SA 4.0 https://creativecommons.org/licenses/by-sa/4.0/"
}

\paper {
  #(set-paper-size "a4")
  left-margin = 2\cm
}

global_morgenblaetter_intro = {
  \key d \major
  \time 3/4
}

global_morgenblaetter = {
  \key g \major
  \time 3/4
%  \set Score.tempoHideNote = ##t
%  \tempo 4 = 160
}

global_morgenblaetter_end = {
  \key d \major
  \time 3/4
}

global_fledermaus = {
  \key a \major
  \time 3/4
}


second_melody_morgenblaetter = \relative c'' {
  \global_morgenblaetter_intro
  r2 r8 <d fis a d>8
  <d fis a d>2.~
  <d fis a d>4 r4 r8 <a' d fis>8
  <a d fis>2.~
  <a d fis>4 r4 r8 e8
  e2.(
  d4) r2
  <e e'>2.
  <es es'>
  <d d'>~
  <d d'>
  
  R2.
  \global_morgenblaetter
  ais'4 r b
  \acciaccatura b e r d
  fis, r g
  \acciaccatura g c r b
  a r g(
  fis) r g
  a r b
  c2.
  b4 r c
  \acciaccatura c fis r e
  a, r b
  \acciaccatura b d r c
  e,2( es4)
  d2( fis4)
  b2( a4)
  g2.
  ais,8 ais' ais, ais' b, b'
  e, e' e, e' d, d'
  fis,, fis' fis, fis' g, g'
  c, c' c, c' b, b'
  a, a' a, a' g, g'
  fis, fis' fis, fis' g, g'
  a, a' a, a' b, b'
  c, c' c, c' c, c'
  b, b' b, b' c, c'
  fis, fis' fis, fis' e, e'
  a,, a' a, a' b, b'
  d, d' d, d' c, c'
  a, e' a, e' g, es'
  fis, d' fis, d' a fis'
  d b' d, b' c, a'
  <g b,>2 <d fis>4(
  
  \global_morgenblaetter_end
  <cis e>2 <b d>4)
  <a cis>8. a'16 a8 r b,8. a'16
  a8 r a,8. a'16 a8 r
  a,8. a'16 a8 r <a a,>4~
  <a a,> <cis cis,> <d d,>
  <fis cis a>4.( e8 cis a)
  fis'4.( e8 cis a)
  <b gis eis d>2.(
  <a fis d>4) g fis
  dis8. b'16 b8 r c,8. b'16
  b8 r b,8. b'16 b8 r
  b,8. b'16 b8 r <b b,>4(
  <b b,> <dis dis,> <e e,>)
  <fis cis fis,>4.( e8 cis a)
  <cis g e>4.( b8 g e)
  d4 r2
}

second_melody_fledermaus = \relative c'' {
  \global_fledermaus
  <cis e>2 <b d>8 <a cis>
  <fis ais>2 b8 d
  <fis a>4 r <fis a>
  <fis a>2.
  a,2 gis8 fis
  dis2 e8 gis
  <d' fis>4 r <d fis>
  <cis fis>2.
  <cis e>2 <b d>8 <a cis>
  <fis ais>2 b8 d
  <fis a>4 r <fis a>
  <fis a>2.
  a,2 gis8 fis
  dis2 e8 gis
  <d' fis>4 r <d e>
  <e, a cis>2 r4
  
  e8 dis e fis e d
  cis bis cis d cis b
  a cis e4 <cis fis>
  <d fis>2.
  
  \acciaccatura gis8 fis eis fis a gis fis
  d d d4 d
  \acciaccatura gis8 fis eis fis a gis fis
  <a, cis> <a cis> <a cis>4 <a cis>
  e'8 dis e fis e d
  cis bis cis d cis b
  a cis e4 <cis fis>
  <cis eis gis>2.
  gis'8 fisis gis cis bis ais
  fis fis fis4 fis
  fis8 eis fis ais gis bis,
  cis4 r2
}

second_melody = \relative c'' {
  \transpose d c {
    \second_melody_morgenblaetter
  }
  \transpose cis c {
    \second_melody_fledermaus
  }
}

melody_morgenblaetter = \relative c' {
  \global_morgenblaetter_intro
  R2.*4
  r2 r8 <g' b>8
  <g b>2.~
  <g b>4 r2
  e2.
  es
  d~
  d
  R2.
  
  \global_morgenblaetter
  R2.*12
  <a' c>2( g4)
  fis2( a4)
  d2( c4)
  b2.
  R2.*12
  <a c>2( g4)
  fis2( a4)
  d2( c4)
  b2 r4
  
  \global_morgenblaetter_end
  R2.*16
}

melody_fledermaus = \relative c'' {
  \global_fledermaus
  R2.
  d,4 fis b
  d, fis b
  e, a cis
  e, a cis
  gis d' e
  e, b' d
  a cis e
  a, cis e
  d, fis b
  d, fis b
  e, a cis
  e, a cis
  gis d' e
  e, b' e
  <a, cis e>2 r4
}

melody = \relative c'' {
  \transpose d c {
    \melody_morgenblaetter
  }
  \transpose cis c {
    \melody_fledermaus
  }
}

left_morgenblaetter = \relative c {
  \global_morgenblaetter_intro
  R2.
  \repeat unfold 2 {
    <d d,>4 <fis fis,> <a a,>
    <d d,> r2
  }
  R2.*2
  e,2.
  es
  d~
  d
  R2.
  
  \global_morgenblaetter
  R2.
  \repeat unfold 6 {
    g,4 <g' b d> <g b d>
  }
  \repeat unfold 5 {
    a,4 <a' c e> <a c e>
  }
  c,4 <a' c e> <g c es>
  \repeat unfold 2 { d <fis c' d> <fis c' d> }
  \repeat unfold 2 { g <b d> <b d> }
  \repeat unfold 6 { <g g,> <g b d> <g b d> }
  \repeat unfold 2 { a, <a' c e> <a c e> }
  \repeat unfold 3 { <a a,> <a c e> <a c e> }
  <c, c,> <e a c> <es g c>
  <d d,> <d a' c> <d a' c>
  <d d,> <d fis c' d> <d fis a d>
  <g b d>2 <d' fis>4(
  
  \global_morgenblaetter_end
  <cis e>2 <b d>4)
  a4 <cis e> <cis e>
  g <a cis e> <a cis e>
  fis <a d> <a d>
  d, <fis a d> <fis a d>
  cis <g' a e'> <g a e'>
  a, <g' a cis> <g a cis>
  d <gis b d> <gis b d>
  <d fis a d> <e' g> <d fis>
  b <dis fis> <dis fis>
  a <b dis fis> <b dis fis>
  g <b e> <b e>
  e, <g b e> <g b e>
  \repeat unfold 2 { a, <g' a cis> <g a cis> }
  <d fis a d> r2
}

left_fledermaus = \relative c {
  \global_fledermaus
  R2.
  \repeat unfold 2 { d4 <fis b> <fis b> }
  \repeat unfold 2 { e <a cis> <a cis> }
  gis <d' e> <d e>
  e, <b' d> <b d>
  \repeat unfold 2 { a <cis e> <cis e> }
  \repeat unfold 2 { d, <fis b> <fis b> }
  \repeat unfold 2 { e <a cis> <a cis> }
  gis <d' e> <d e>
  e, <b' e> <e, b' e>
  a2 r4
}

left = \relative c' {
  \transpose d c {
    \left_morgenblaetter
  }
  \transpose cis c {
    \left_fledermaus
  }
}

pedal_morgenblaetter = \relative c {
  \global_morgenblaetter_intro
  R2.*12
  \global_morgenblaetter
  R2.
  
  \repeat unfold 6 { g4 r2 }
  \repeat unfold 5 { a4 r2 }
  c4 r2
  \repeat unfold 2 { d4 r2 }
  \repeat unfold 8 { g,4 r2 }
  \repeat unfold 5 { a4 r2 }
  c4 r2
  \repeat unfold 2 { d4 r2 }
  g,2 r4
  
  \global_morgenblaetter_end
  R2.
  a4 r2
  g4 r2
  fis4 r2
  d4 r2
  cis'4 r2
  a4 r2
  d,4 r2
  d4 r2
  b'4 r2
  a4 r2
  g4 r2
  e4 r2
  a4 r2
  a4 r2
  d4 r2
}

pedal_fledermaus = \relative c, {
  \global_fledermaus
  R2.
  \repeat unfold 2 { d4 r2 }
  \repeat unfold 2 { e4 r2 }
  gis4 r2
  e4 r2
  \repeat unfold 2 { a4 r2 }
  \repeat unfold 2 { d,4 r2 }
  \repeat unfold 2 { e4 r2 }
  gis4 r2
  e4 r e
  a2 r4
}

pedal = \relative c, {
  \transpose d c {
    \pedal_morgenblaetter
  }
  \transpose cis c {
    \pedal_fledermaus
  }
}

glockenspiel = \relative c'' {

}

drum = \drummode {

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
    \tempo 4=200
  }
}
