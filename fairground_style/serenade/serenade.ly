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

second_melody_intro = \relative c'' {
  R2*9
}

second_melody_part_one = \relative c' {
  e'8 g, e'4
  f8 e d4
  c8 g e' c
  g4 g
  
  f'8 g, f'4
  e8 g, e'4
  d b8 a
  g4 g
    
  e'8 g, e'4
  f8 e d4
  c8 g e' c
  g4 g
  
  a8 c4 a8
  g e c4
  e8 c d g,
  c4 c
}

second_melody_alt_one = \relative c' {
  \repeat unfold 2 {
    d'8 c16 b f'8 e16 d
    e8 g, g c
    b b a f' g, e' c16 b c a
    d8 c16 b f'8 e16 d
    e8 g, g c
  }
  \alternative {
    {
      d b a d, g a g g
    }
    {
      d' b a d, g a g4
    }
  }
}

second_melody_part_two = \relative c' {
  f4 a
  c8 bes g4
  f a
  f'8 d c4
  bes8 d c bes
  a c f4
  e4 d
  c8 c c4
  
  f,4 a
  c8 bes g4
  f a
  f'8 d c4
  bes8 d c bes
  a c f4
  g,8 bes a g
  g f f4
}

second_melody_alt_two = \relative c'' {
  a8 e' f e
  d f, g a
  a, g' f e
  d2
  
  a'8 e' f e
  d a' g f
  e d f gis,
  a4 bes8\mordent a8
  
  a8 e' f e
  d f, g a
  a, g' f e
  d2
  
  a'8 e' f e
  d a c bes
  a g fis g
  c2
}

second_melody = \relative c'' {
  \global
  \second_melody_intro
  
  \second_melody_part_one
  \second_melody_alt_one
  \second_melody_part_one
  
  \second_melody_part_two
  \second_melody_alt_two
  \second_melody_part_two
  
  \second_melody_intro
  
  \second_melody_part_one
}

melody_intro = \relative c'' {
  e8 g, e' g,
  f' e d4
  c c8 a
  a4 g
  f'8 g, d' e
  c4 g8 f
  e4 d
  c2
  r
}

melody_part_one = \relative c' {
  g'2~
  g~
  g
  b
  
  d,
  c'
  d4 d8 c
  b2
  
  g~
  g~
  g
  b
  f'
  e
  e4 d
  c c
}

melody_alt_one = \relative c'' {
  \repeat unfold 4 {
    d4 g,
    g'2
    b,4 a
    g2
  }
}

melody_part_two = {
  R2*16
}

melody = \relative c'' {
  \global
  \melody_intro
  
  \melody_part_one
  \melody_alt_one
  \melody_part_one
  
  \melody_part_two
}

left_part_intro = \relative c' {
  r8 <c, e> <c e g> <c e g c>
  r <g b> <g b d> <g b d g>
  r <c e> <c e g> <c e g c>
  r <g b> <g b d> <g b d g>
  <b d f g>2\(
  <a c e>4 <b d g>
  <c e g> <b d g>\)
  c8 <e g c> g, <e' g c>
  c <e g c> g, <e' g c>
}

left_part_one = \relative c {
  c8 <e g c> g, <e' g c>
  b <d g b> g, <d' g b>
  c <e g c> g, <e' g c>
  b <d g b> g, <d' g b>
  
  b <d g b> g, <d' g b>
  c <e g c> g, <e' g c>
  d <fis a d> a, <fis' a d>
  b, <d g b> <d g b> <d g b>
  
  c <e g c> g, <e' g c>
  b <d g b> g, <d' g b>
  c <e g c> g, <e' g c>
  b <d g b> g, <d' g b>
  a <c f a> f, <c' f a>
  e, <c' e g> g <c e g>
  c <e g c> g, <b d g>
  <c e g c>4 <c e g c>
}

left_alt_one = \relative c {
  \repeat unfold 2 {
    <b d g>2\(
    <c e g>
    <b d g>
    <c e g>
    <b d g>
    <c e g>
    <d fis a>
    <b d g>\)
  }
}

left_part_two = \relative c {
  \repeat unfold 8 { <f a c>16 }
  \repeat unfold 8 { <e g c>16 }
  \repeat unfold 8 { <f a c>16 }
  \repeat unfold 4 { <f bes d>16 } \repeat unfold 4 { <f a c>16 }
  \repeat unfold 8 { <e g c>16 }
  \repeat unfold 8 { <f a c>16 }
  \repeat unfold 8 { <g b d>16 }
  \repeat unfold 8 { <e g c>16 }
  
  \repeat unfold 8 { <f a c>16 }
  \repeat unfold 8 { <e g c>16 }
  \repeat unfold 8 { <f a c>16 }
  \repeat unfold 4 { <f bes d>16 } \repeat unfold 4 { <f a c>16 }
  \repeat unfold 8 { <e g c>16 }
  \repeat unfold 8 { <f a c>16 }
  \repeat unfold 8 { <e g c>16 }
  <f a c>8 <f a c> <f a c>4
}

left = \relative c' {
  \global
  \left_part_intro
  
  \left_part_one
  \left_alt_one
  \left_part_one
  
  \left_part_two
}

pedal_part_intro = \relative c, {
  c'8 r4 c8
  g r4 g8
  c r4 c8
  g r4 g8
  g2
  a4 g
  c g
  c8 r g r
  c r g r
}

pedal_part_one = \relative c {
  c r g r
  g' r d r
  c r g r
  g' r d r
  
  g r d r
  c r g r
  d' r b r
  g2
  
  c8 r g r
  g' r d r
  c r g r
  g' r d r
  f r c r
  c r g r
  c r g' r
  c,4 c
}

pedal_alt_one = \relative c {
  \repeat unfold 2 {
    g'4 d
    c g
    g' d
    c g
    g' d
    c g
    d' a
    g g
  }
}

pedal_part_two = \relative c {
  f8 r f r
  c r c r
  f r f r
  bes, d f r
  c r c r
  f r f r
  g r g r
  c, c c4
  
  f8 r f r
  c r c r
  f r f r
  bes, d f r
  c r c r
  f r f r
  c r c r
  f f f4
}

pedal = \relative c, {
  \global
  \pedal_part_intro
  
  \pedal_part_one
  \pedal_alt_one
  \pedal_part_one
  
  \pedal_part_two
}

glockenspiel = \relative c'' {
  \global
  
}

drum_part_intro = \drummode {
  <bd sna>8 r4 <bd sna>8
  <bd sna> r4.
  <bd sna>8 r4 <bd sna>8
  <bd sna> r4.
  <bd sna>8 r4 <bd sna>8
  <bd sna> r4.
  r8 <bd sna> r <bd sna>
  <bd sna> r r4
  r2
}

drum_alt_one = \drummode {
  \repeat unfold 2 {
    r8 sna r sna
    r sna sna sna
    r sna sna sna
    r sna sna sna
    r sna r sna
    r sna sna sna
    r sna r sna
    sna r r4
  }
}

drum = \drummode {
  \drum_part_intro
  
  R2*16 
  \drum_alt_one
  R2*16
  
  R2*16
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
