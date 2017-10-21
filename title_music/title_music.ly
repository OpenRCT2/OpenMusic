\version "2.18.2"
\include "articulate.ly"
#(define ac:normalFactor '(7 . 8))

\header {
  title = "Galop Prestissimo"
  composer = "Émile Waldteufel (1837 - 1915)"
  arranger = "Christian Friedrich Coors"
  tagline = "https://www.github.com/ccoors/OpenRCT2-OpenMusic"
  copyright = "Arrangement CC-BY-SA 4.0 https://creativecommons.org/licenses/by-sa/4.0/"
}

\paper {
  #(set-paper-size "a4")
  left-margin = 2\cm
}

global = {
  \key g \major
  \time 2/4
}

main_melody_right = \relative c' {
  d8 r4 e8 |
  fis r4 g8 |
  a r4 b8 |
  <a c> r4 <b d>8 |
  
  \repeat volta 2 {
    <b e>8 r4 <b fis'>8 |
    <b a'> r4 <b g'>8 |
    <b fis'> <b a'> <b g'> <a fis'> |
    <c e>4( <c d>8) d |
    c' r4 d,8 |
    a' r4 <e g>8 |
    <d fis> <c e> <b d> <a c> |
    <fis ais>4( <g b>8) <b d> |
    <b e>8 r4 <b fis'>8 |
    <b a'> r4 <b g'>8 |
    <b fis'> <b a'> <b g'> <a fis'> |
    <a e'>4( <a d>8) g |
    <cis g'> r4 a8 |
    <d fis> r4 a8 |
    <g e'>8 r4 g8 |
    
  }
  \alternative {
    {
      <fis d'>8 r4 <b d>8 |
    }
    {
      <fis d'>8 r4. |
    }
  }
  
  R2*8
  <c' e>8 <c d> <c e> <c d> |
  <b e> <b d> <b e> <b d> |
  <a e'> <a d> <a e'> <a d> |
  <gis e'> <gis d'> <gis e'> <gis d'> |
  d' c b a |
  a g fis e |
  e d b' a |
}

main_melody_ending = {
  g'8 r4 <b d>8 |
  <b e> r4 <b fis'>8 |
  <b a'> r4 <b g'>8 |
  <b fis'> <b a'> <b g'> <b e> |
  <c e>4( <c d>8) d |
  <c es>8 r4 d8 |
  <c e> r4 d8 |
  <c f> d <c fis> d |
  <b g'> r4 <b d>8 |
  <b e> r4 <b fis'>8 |
  <b a'> r4 <b g'>8 |
  <b fis'> <b a'> <b g'> <b e> |
  <c e>4( <c d>8) d |
  <c es> r4 d8 |
  <c e> r4 d8 |
  <c f> d <c fis> d |
  
  g g <b b,> g |
  <c c,> g <cis cis,> g |
  <d' d,> d <es es,> d |
  <e e,> d <fis fis,> d |
  <g g,> g, <b b,> g |
  <c c,> g <cis cis,> g |
  <d' d,> d <es es,> d |
  <e e,> d <fis fis,> d |
  
  \repeat unfold 4 { <g g,> d <fis fis,> d | }
  \repeat unfold 2 {
    <g g,> r <g g,> <g g,> |
    <g g,> <g g,> <g g,> <g g,> |
  }
  <g g,>4 r |
  <g g,> r |
  <b,, d g>2~ |
  <b d g> |
}

right = \relative c' {
  \global
  \partial 8 cis8 |
  \main_melody_right
  g'4. r8 |
  
  % Trio
  \key c \major
  R2*3
  r4. g'8 |
  \repeat volta 2 {
    g,4. g'8 |
    a,4. g'8 |
    b, g' c, g' |
    cis,4( d8) g |
    cis,4. g'8 |
    d4. g8 |
    cis, g' d g |
    dis4( e8) g |
    
    g,4. g'8 |
    a,4. g'8 |
    b, g' c, g' |
    cis,4( d8) dis |
    fis4.( e8) |
    g4.( b,8) |
    e4.( d8) |
  }
  \alternative {
    {
      g,4. g'8 |
    }
    {
      g,8 a16 b c d e f |
    }
  }
  
  \repeat volta 2 {
    g8 r fis r |
    a4( g8) r |
    \acciaccatura { g32 a b } c8 b a gis |
    b a d, r |
    d r cis r |
    e4( d8) r |
    \acciaccatura { f32 g a } b8 a g fis |
    a g e r |
    
    g r fis r |
    a4( g8) r |
    \acciaccatura { g32 a b } c8 b a gis |
    b a d, r |
    c8. d32( c b8) a |
    g <c e a> <c e a> r |
    g <b f' a> <b f' a> r |
    g <c e a> <c e a> r |
    c8. d32( c b8) a |
    g a' a8. b16 |
    a8 g f d |
  }
  \alternative {
    {
      c c c r |
    }
    {
      <c e,> <c e,> <c e,> cis, |
    }
  }
  
  \key g \major
  \main_melody_right
  \main_melody_ending
}

main_melody_left = \relative c' {
  r8 cis c r |
  r b a r |
  r g fis r |
  r e d r |
  \repeat volta 2 {
    \repeat unfold 3 { r8 <b' d> r <g b d> } |
    \repeat unfold 3 { r <a c d> r <a c d> } |
    r <c d> r <a c d> |
    \repeat unfold 3 { r <b d> r <g b d> } |
    r <b d> <b d> <b d> |
    r <a d> <a d> <a d> |
    R2*3
  }
  
  \alternative {
    {
      R2
    }
    {
      R2
    }
  }
  r8 <d, fis a> r <d fis a> |
  r <d g b> r <d g b> |
  r <c d fis> r <c d fis> |
  r <b d e> r <b d e> |
  r <c e a> r <e a c> |
  r <g b> <g b> <g b> |
  r <fis a c> <fis a c> <fis a c> |
  r <b d> <b d> <b d> |
  <d, fis a>2 |
  <d g b> |
  <c d fis> |
  <b d e> |
  <c e a>4 <e a c> |
  <g b>2 |
  <fis a c> |
}

left = \relative c' {
  \global
  r8 |
  \main_melody_left
  <g b>8 d g, r |
  
  % Trio
  \key c \major
  R2*4
  \repeat volta 2 {
    \repeat unfold 3 { r8 <e' g> r <e g> } |
    \repeat unfold 4 { r <d g> r <d g> } |
    \repeat unfold 4 { r8 <e g> r <e g> } |
    r <d g> <d g> r |
    <cis e g bes> <cis e g bes> <cis e g bes> r |
    <d g b> <d g b> <d g b> r |
    <d fis a> <d fis a> <d fis a> r |
  }
  \alternative {
    {
      <g b d> <g b d> <g b d> r |
    }
    {
      <g b d> r4. |
    }
  }
  \repeat volta 2 {
    <e g c>8 r <es g c> r |
    <e g c>4 r |
    r8 <e g c> r <e g c> |
    <f a d> <f a d> <f a d> r |
    
    <f b d> r <e bes' cis> r |
    <f b d>4 r |
    r8 <f b d> r <f b d> |
    <e g c> <e g c> <e g c> r |
    
    <e g c>8 r <es g c> r |
    <e g c>4 r |
    r8 <e g c> r <e g c> |
    <f a d> <f a d> <f a d> r |
    
    <fis a c es>4 <fis a c es> |
    r8 <c' e> <c e> <c e> |
    r <b d f> <b d f> <b d f> |
    r <e, g c> <e g c> <e g c> |
    
    <fis a c es>4 <fis a c es> |
    r8 <c' e> <c e> <c e> |
    r <b d f> <b d f> <b d f> |
  }
  \alternative {
    { 
      <c e> <c e> <c e> r |
    } {
      R2 |
    }
  }
  
  \key g \major
  \main_melody_left
  
  \repeat unfold 2 {
    \repeat unfold 4 {
      r8 <b d> r <g b d> |
    }
    \repeat unfold 4 {
      r <a d> r <fis a d> |
    }
  }
  <g b> r <f g b>4 |
  <e g c> <es g bes cis> |
  <d g b d> <d g b d> |
  <d fis a d> <d fis a d> |
  <g b d>8 r <f g b>4 |
  <e g c> <es g bes cis> |
  <d g b d> <d g b d> |
  <d fis a d> <d fis a d> |
  \repeat unfold 4 {
    r8 <b' d> r <fis a d> |
  }
  <g b d> r g4 |
  d b |
  g g' |
  d b |
  g r |
  <g' b d> r |
  <g g,>2~ |
  <g g,>
}

main_melody_clarinet = \relative c'' {
  R2*4 |
  \repeat volta 2 {
    R2*15 |
  }
  \alternative {
    {
      R2 |
    }
    {
      r4. d8 |
    }
  }
  e d \acciaccatura fis e d
  \repeat unfold 3 { \acciaccatura fis8 e d \acciaccatura fis e d } |
  d' c b a |
  a g fis e |
  e d fis e |
  e d cis d |
  e d e d |
  e d e d |
  e d e d |
  e d e d |
  d' c b a |
  a g fis e |
  e d b' a |
}

clarinet = \relative c'' {
  \global
  %\transposition bes
  r8\ff |
  \main_melody_clarinet
  g'4. r8 |
  
  % Trio
  \key c \major
  R2*4 |
  \repeat volta 2 {
    R2*15 |
  }
  \alternative { { R2 } { R2 } }
  \repeat volta 2 {
    g8 r fis r |
    a4( g8) r |
    \acciaccatura { g32 a b } c8 b a gis |
    b a d, r |
    d r cis r |
    e4( d8) r |
    \acciaccatura { f32 g a } b8 a g fis |
    a g e r |
    
    g r fis r |
    a4( g8) r |
    \acciaccatura { g32 a b } c8 b a gis |
    b a d, r |
    c8. d32( c b8) a |
    g <c e a> <c e a> r |
    g <b f' a> <b f' a> r |
    g <c e a> <c e a> r |
    c8. d32( c b8) a |
    g a' a8. b16 |
    a8 g f d |
  }
  \alternative {
    {
      c c c r |
    }
    {
      e e e r |
    }
  }
  
  \key g \major
  \main_melody_clarinet
  \relative c' { \main_melody_ending }
}

main_melody_trumpet = \relative c'' {
  R2*4
  \repeat volta 2 {
    R2*12
    <e g a>8 <e g a> <e g a> r |
    <d fis a> <d fis a> <d fis a> r |
    <a cis e g> <a cis e g> <a cis e g> r |
  }
  \alternative {
    {
      <d, fis a> <d fis a> <d fis a> r |
    }
    {
      R2 |
    }
  }
  R2*8 |
  <d fis a>2 |
  <d g b> |
  <c d fis> |
  <b d e> |
  <c e a>4 <e a c> |
  <g b>2 |
  <fis a c> |
}

trumpetC = \relative c'' {
  \global
  r8\ff |
  \main_melody_trumpet
  <g b>8 d g,
  
  % Trio
  a''
  \key c \major
  d,4. a'8 |
  d,4. a'8 |
  d, a' d, a' |
  d,4. r8 |
  
  \repeat volta 2 {
    R2*15 |
  }
  \alternative { { R2 } { R2 } }
  
  \repeat volta 2 {
    R2*12
    R2*7
  }
  \alternative { { R2 } { R2 } }
  
  \key g \major
  \main_melody_trumpet
  R2*16
  g,8 g b g |
  c g cis g |
  d' d es d |
  e d fis d |
  g b b g |
  c g cis g |
  d d es d |
  e d fis d |
  
  \repeat unfold 4 { g d fis d | }
  \repeat unfold 2 {
    <g d b> r <g d b> <g d b> |
    <g d b> <g d b> <g d b> <g d b> |
  }
  <g d b g>4 r |
  <d' g, d b g> r |
  <b,, d g>2~ |
  <b d g> |
}

main_melody_tuba = \relative c {
  R2*4
  \repeat volta 2 {
    \repeat unfold 3 { g8 r d r } |
    \repeat unfold 3 { fis r d r } |
    a' r d, r |
    \repeat unfold 3 { g r d r } |
    g4 r |
    fis r |
    g4. r8 |
    fis4. r8 |
    e4. r8 |
  }
  \alternative {
    {
      d4. r8 |
    }
    {
      R2 |
    }
  }
  c'8 r c r |
  b r b r |
  a r a r |
  gis r gis r |
  a r c r |
  d4. r8 |
  d4. r8 |
  g,4. r8 |
  
  c8 r c r |
  b r b r |
  a r a r |
  gis r gis r |
  a r c r |
  d4. r8 |
  d4. r8 |
}

tuba = \relative c {
  \global
%  \transposition bes,
  r8\ff |
  \main_melody_tuba
  g' d g, r |
  
  % Trio
  \key c \major
  R2*4 |
  \repeat volta 2 {
    \repeat unfold 3 { c8 r g r } |
    \repeat unfold 4 { b r g r } |
    \repeat unfold 4 { c r g r } |
    b4. r8 |
    cis4. r8 |
    g4. r8 |
    d4. r8 |
  }
  \alternative {
    {
      g4. r8 |
    }
    {
      g8 r4. |
    }
  }
  
  \repeat volta 2 {
    c8 r c r |
    c4 r |
    c8 r c r |
    f, f f r |
    
    g r g r |
    g4 r |
    g8 r g r |
    c c c r |
    
    c8 r c r |
    c4 r |
    c8 r c r |
    f f f r |
    
    fis,4 fis |
    g4. r8 |
    g4. r8 |
    g4. r8 |
    fis4 fis |
    g4. r8 |
    g4. r8 |
  }
  \alternative {
    {
      c8 c c r |
    }
    {
      c g c, r |
    }
  }
  
  \key g \major
  \main_melody_tuba
  \repeat unfold 2 {
    \repeat unfold 4 {
      g'8 r d r |
    }
    \repeat unfold 4 {
      fis r d r
    }
  }
  g4 f |
  e es |
  d d |
  d d |
  g f |
  e es |
  d d |
  d d |
  \repeat unfold 4 {
    g8 r d r |
  }
  g'4 <g g,> |
  <d d,> <b b,> |
  <g g,> <g' g,> |
  <d d,> <b b,> |
  <g g,> r |
  <g g,> r |
  <g g,>2~ |
  <g g,>
}

main_melody_drums = \drummode {
  R2*4
  \repeat volta 2 {
    R2*12
    \repeat unfold 3 { r4 <bd sna>8 r } |
  }
  \alternative {
    {
      r4 <bd sna>8 r |
    }
    {
      R2 |
    }
  }
  R2*8
  sna16\pp\<\repeat tremolo 7 { sna16 }
  \repeat unfold 3 { \repeat tremolo 8 { sna16 } } |
  <bd sna hh cymc>8\f r <bd sna hh cymc> r |
  <bd sna hh cymc> r4. |
  <bd sna hh cymc>8 r4. |
}

drum = \drummode {
  \global
  r8\f |
  \main_melody_drums
  <bd sna hh cymc>8 r4. |
  R2*4
  \repeat volta 2 {
    R2*12
    \repeat unfold 3 { r4 <bd sna hh cymc> }
  }
  \alternative {
    {
      <bd sna hh cymc> <bd sna hh cymc>
    }
    {
      <bd sna hh cymc> r
    }
  }
  
  \repeat volta 2 {
    R2*8
    <bd sna hh cymc>8 r <bd sna hh cymc> r
    <bd sna hh cymc>4 r
    R2*2
    \repeat tremolo 8 { sna16 }
    <bd sna hh cymc>4 <bd sna>8 <bd sna>
    <bd sna hh cymc>4 <bd sna>8 <bd sna>
    <bd sna hh cymc>4 <bd sna>8 <bd sna>
    \repeat tremolo 8 { sna16 }
    <bd sna hh cymc>4 <bd sna>8 <bd sna>
    <bd sna hh cymc>4 <bd sna hh cymc>
  }
  \alternative {
    {
      <bd sna hh cymc>8 <bd sna hh cymc> <bd sna hh cymc> r
    }
    {
      <bd sna hh cymc> r <bd sna hh cymc> r
    }
  }
  
  \main_melody_drums
  R2*16
  <bd sna hh>4\pp\< <bd sna hh>
  <bd sna hh> <bd sna hh>
  <bd sna hh> <bd sna hh>
  <bd sna hh cymc> <bd sna hh cymc>
  <bd sna hh cymc>\ff <bd sna hh>\pp\<
  <bd sna hh> <bd sna hh>
  <bd sna hh> <bd sna hh cymc>
  <bd sna hh cymc> <bd sna hh cymc>
  <bd sna hh cymc>\ff <bd sna hh cymc>
  \repeat unfold 7 { <bd sna hh cymc> <bd sna hh cymc> }
  <bd sna hh cymc>4 r
  <bd sna hh cymc> r
  <bd sna hh cymc>16\fff \repeat tremolo 7 { sna16 }
  \repeat tremolo 7 { sna16 } <bd sna hh cymc>16
}

organPart = \new PianoStaff \with {
  instrumentName = "Organ"
  shortInstrumentName = "Org."
} <<
  \new Staff = "right" \with {
    midiInstrument = "church organ"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "church organ"
  } { \clef bass \left }
>>

clarinetPart = \new Staff \with {
  instrumentName = "Clarinet"
  shortInstrumentName = "Cl."
  midiInstrument = "clarinet"
} \clarinet

trumpetCPart = \new Staff \with {
  instrumentName = "Trumpet in C"
  shortInstrumentName = "Tr.C."
  midiInstrument = "trumpet"
} \trumpetC

tubaPart = \new Staff \with {
  instrumentName = "Tuba"
  shortInstrumentName = "Tb."
  midiInstrument = "tuba"
} { \clef bass \tuba }

drumsPart = \new DrumStaff \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Drums"
  shortInstrumentName = "Dr."
} \drum

\score {
  <<
    \organPart
    \clarinetPart
    \trumpetCPart
    \tubaPart
    \drumsPart
  >>
  \layout { }
}

\score {
  \unfoldRepeats \articulate <<
    \organPart
    \clarinetPart
    \trumpetCPart
    \tubaPart
    \drumsPart
  >>
  \midi {
    \tempo 4=140
  }
}

