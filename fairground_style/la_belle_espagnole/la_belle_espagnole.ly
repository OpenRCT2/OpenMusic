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

global_andante_tempo = {
  \set Score.tempoHideNote = ##t
  \tempo 4 = 95
}

global_andante_fermata = {
  \set Score.tempoHideNote = ##t
  \tempo 4 = 60
}

global_andante = {
  \time 9/8
  \global_andante_tempo
}

global_tempo_di_valse = {
  \set Score.tempoHideNote = ##t
  \tempo 4 = 220
  \time 3/4
}

global_one = {
  \set Score.tempoHideNote = ##t
  \tempo 4 = 200
  \time 3/4
  \key e \minor
}

global_one_two_tempo = {
  \set Score.tempoHideNote = ##t
  \tempo 4 = 200
}

global_one_two_fermata = {
  \set Score.tempoHideNote = ##t
  \tempo 4 = 60
}

global_one_two = {
  \key c \major
  \global_one_two_tempo
}

melody_one_a_tempo = \relative c''' {
  b g e |
  r fis8 g a c |
  \tuplet 3/2 { b( c b } \tuplet 3/2 { g b g } e4) |
  r b' <e e,> |
  <b b,> g e |
  <g g'> fis'8 e d c |
  b2.~ |
  b4 \acciaccatura c8 b ais b c |
  b4 \acciaccatura c8 b ais b4 |
  \tuplet 3/2 { a8( b a) } g r fis r |
  \tuplet 3/2 { g( a g } \tuplet 3/2 { fis g fis } e4) |
  \acciaccatura e8 e'4 d8 c b a |
  g fis e2 |
  fis8 e dis2 |
  e8 g dis fis e4 |
}

melody = \relative c'' {
  \global_presto
  \mark "Intro"
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
  <e e'>4.( <d d'>8) <e e'>16( <d d'> <cis cis'> <d d'>) <fis fis'>4\fermata( <e e'>8) |
  <e e'>8( <d d'> <b b'> <g g'> <e e'> <c' c'>) <b b'>4\fermata( <a a'>8) |
  <g g'>8 \repeat unfold 8 { <g b d g> } |
  \repeat unfold 3 { \repeat unfold 9 { <g b d g> } | }
  <g b d g>2. r4. |
  
  \global_tempo_di_valse
  R2.\mark "Tempo di Valse" |
  R2. |
  c'8( b a g fis e |
  dis c b2) |
  R2.*2
  
  <<
    { r4 \acciaccatura c'8 b( ais b c) }
  \\
    { <b, dis fis b>2 <b e g b>4 }
  >>
  \global_andante_tempo <b dis fis b>2.\fermata |
  
  \global_one
  r4 b' e |
  \repeat volta 2 {
    \melody_one_a_tempo
  }
  \alternative {
    { r4 b e | }
    { r4. r16 g,,32( a b c d e f g a b) | }
  }
  
  \global_one_two
  \repeat volta 2 {
    c4 b8 a g4 |
    \tuplet 3/2 { a8( b a) } g4 e |
    d\trill c8 b a4~ |
    a g8 a b g |
    c4 c8 d e4~ |
    e8 dis e4 a |
    g \tuplet 3/2 { f8( g f } \tuplet 3/2 { e f e } |
    d4) r8. g,32( a b c d e f g a b |
    c4) b8 a g4 |
    \tuplet 3/2 { a8 b a } g4 e |
    d\trill c8 b a4~ |
    a g8 a b g |
    c4 c8 d e c |
    d4 d8 g g, d' |
    c4 \acciaccatura d8 c b c d |
  }
  \alternative {
    { c4. r16 g32( a b c d e f g a b) }
    { \global_one_two_fermata c,4\fermata \global_one_two_tempo b' e }
  }
  
  \global_one
  \melody_one_a_tempo
}

second_melody = \relative c'' {
  \global_presto
}

left_one_a_tempo = {
  r4 <e g b> <e g b> |
  r <e a c> <e a c> |
  \repeat unfold 3 { r <e g b> <e g b> }
  <e a c e>2. |
  r4 <g b e> <g b e> |
  <g b e> r2 |
  r4 <a b fis'> <a b fis'> |
  r <fis a b dis> <fis a b dis> |
  r <g b e> <g b e> |
  <c, e a>2. |
  r4 <e g b> <e g b> |
  r <dis fis b> <dis fis b> |
  <e g b> <b dis fis b> <e g b> |
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
  r8 <d g b>16 <d g b> \repeat unfold 4 { <d g b>8 } \global_andante_fermata <cis e g bes>\fermata <cis e g bes> \global_andante_tempo <cis e g bes> |
  r8 <d g b>16 <d g b> \repeat unfold 4 { <d g b>8 } \global_andante_fermata <d fis c'>\fermata <d fis c'> \global_andante_tempo <d fis c'> |
  <g g,>2. <g g,>8 <fis fis,> <g g,> |
  <fis fis,>4.( <e e,>) <fis fis,>8 <e e,> <fis fis,> |
  <e e,>4.( <d d,>) <e e,>8 <d d,> <b b,> |
  <a' a,>4. <g g,> <d d,> |
  <g g,>2. r4. |
  
  \global_tempo_di_valse
  <b b,>4 <c c,> <b b,> |
  <c c,> <b b,>2 |
  \repeat unfold 3 { <b, dis fis a>4 } |
  <b dis fis a> <b dis fis a>2 |
  <b' b,>4 <c c,> <b b,> |
  <c c,> <b b,>2 |
  <b, dis fis b> <b e g b>4 |
  <b dis fis b>2.\fermata |
  
  \global_one
  R2. |
  \repeat volta 2 {
    \left_one_a_tempo
  }
  \alternative {
    { R2. }
    { R2. }
  }
  
  \global_one_two
  \repeat volta 2 {
    \repeat unfold 3 {
      \repeat unfold 2 { r4 <g c e> <g c e> | }
      \repeat unfold 2 { r4 <g b f'> <g b f'> | }
    }
    r4 <g c e> <g c e> |
    r4 <g b f'> <g b f'> |
    r4 <g c e> <g c e> |
  }
  \alternative {
    { <g c e>4 r2 | }
    { <g c e>4\fermata r2 | }
  }
  
  
  \global_one
  \left_one_a_tempo
}

pedal_one_a_tempo = {
  \repeat unfold 5 { e2 r4 | }
  e2. |
  e2 r4 |
  e4 r2 |
  dis2 r4 |
  b2 r4 |
  e2 r4 |
  a,2 r4 |
  \repeat unfold 2 { b2 r4 | }
  e4 b e |
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
  g2 r4 cis,4.\fermata |
  d2 r4 d4.\fermata |
  g2. g8 fis g |
  fis4.( e) fis8 e fis |
  e4.( d) e8 d b |
  a4. g d |
  g2. r4. |
  
  \global_tempo_di_valse
  b4 c b |
  c b2 |
  b4 b b |
  b b2 |
  b4 c b |
  c b2 |
  b e4 |
  b2.\fermata |
  
  \global_one
  R2. |
  \repeat volta 2 {
    \pedal_one_a_tempo
  }
  \alternative {
    { R2. }
    { R2. }
  }
  
  \global_one_two
  \repeat volta 2 {
    \repeat unfold 3 {
      c2 r4 |
      g2 r4 |
    }
    d'2 r4 |
    g2 r4 |
    \repeat unfold 2 {
      c,2 r4 |
      g2 r4 |
    }
    c2 r4 |
    g2 r4 |
    c2 r4 |
  }
  \alternative {
    { c4 r2 | }
    { c4\fermata r2 | }
  }
  
  \global_one
  \pedal_one_a_tempo
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
