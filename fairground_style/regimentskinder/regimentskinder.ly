\version "2.18.2"
\include "articulate.ly"
#(define ac:normalFactor '(7 . 8))

% Based on http://imslp.org/wiki/File:PMLP278251-FUCIK_Regimentskinder_Marsch.pdf

\header {
  dedication = "OpenRCT2-OpenMusic"
  title = "Children of the Regiment"
  arranger = "Christian Friedrich Coors"
  subtitle = "Die Regimentskinder"
  composer = "Julius Fučík"
  tagline = "https://www.github.com/ccoors/OpenRCT2-OpenMusic"
  copyright = "Arrangement CC-BY-SA 4.0 https://creativecommons.org/licenses/by-sa/4.0/"
}

\paper {
  #(set-paper-size "a4")
  left-margin = 2\cm
}

global = {
  \key c \major
  \time 4/4
}

right = \relative c'' {
  \global
  \tuplet 3/2 { c, e g } c2~
  c4 g8 g c4 g
  c1 ~
  c

  \tuplet 3/2 { e,4 g c } e2 ~
  e4 c8 c e4 c
  e1 ~
  e

  <c e>4 e8 g <c, a' c>4 <c g' b>8 <c f a>
  <c e g>2 \tuplet 3/2 { f4 g a }
  g8 e g c e4 d
  c g,8 g g r e'4

  \repeat volta 2 {
    dis e b c
    <c e a> r8 <c e a> <c e a>4 e
    dis e b c
    <b f' a> r8 <b f' a> <b f' a>4 a'
    gis a e f
    
    <b, g' b> r8 <b g' b> <b g' b>4 <d b' d>
    <a f' a> r8 <a f' a> <a f' a>4 <c a' c>
    <g e' g> r8 <g e' g> <g e' g>4 e'
    dis e b c
    <c e a> r8 <c e a> <c e a>4 e
    dis e b c
    <b e g> r8 <b e g> <b e g>4 g'
    fis g dis e
    <b b'> r8 <b b'> <b b'>4 <c c'>
    <b b'> \tuplet 3/2 { a'8 b a } <b, g'>4 <a fis'>
  }
  \alternative {
    { <g e'> r r e' }
    { <g, e'> <g g'> <a a'> <c c'> }
  }

  \repeat volta 2 {
    <e c' e>2.\( <b gis' b>4\)
    <c a' c>2.\( <gis e' gis>4\)
    <b g' b>4 r8 <f d' f> <f d' f>2~
    <f d' f>4 <g e' g>\( <c a' c> <a f' a>\)
    <b g' b>4 r8 <f d' f> <f d' f>2~
    <f d' f>4 <g e' g>\( <b g' b> <a f' a>\)
    <a f' a> r8 <fis dis' fis> <g e' g>2~
    <g e' g>4 <g g'> <a a'> <c c'>
    <e c' e>2. <e c' e>4
    <f f'>2.\( <e e'>4\)
    <e e'> r8 <d d'> <d d'>2~
    <d d'>4 <c c'> <a a'> <fis fis'>
  }
  \alternative {
    {
      <a a'>4 r8 <g g'> <g g'>2~
      <g g'>4 <a f'>\( <g b> <g e'>\)
      <e c'> g8 g g4 g
      g <g g'> <a a'> <c c'>
    }
    {
      <c, e g>4 <e g c>8 <e g c> <e g c>4 <g c e>8 <g c e>
      <g c e>4 <c e g>8 <c e g> <c e g>4 <c e gis>
      <b d a'> r <b d b'>2
      <c e g c>4 <c e g c>8 <c e g c> <c e g c>4 r
    }
  }

  % Trio
  \key f \major
  f,4 f8 f f4 a
  c c8 c c4 r
  f c8\( f\) a4 f8 a
  <c, e c'>4 <c e g>8 <c e g> <c e g>4 r
  g4 g8 g g4 bes
  d d8 d d4 r
  f4 e8 d c bes a g
  f4 r r2

  \repeat volta 2 {
    f4 f8 f f4 a
    c c8 c c4 a8\( c
    f4\) c8\( f a4\) f8\( a
    c2.\) c8\( cis
    d4\) g,8\( a bes4\) e,8\( f
    g4\) c, e d8\( e\)
    f\( a f e\) d4 des
    c1
    f,4 f8 f f4 a
    c c8 c c4 a8\( c
    f4\) c8\( f a4\) f8\( a
    c2.\) c8\( d e4\)
    a,8\( b c4\) e,8\( gis
    a4\) c,4 e c8 d
    e d c b e4 gis,
  }
  \alternative {
    {
      a4 r <e bes' c>2
    }
    {
      a4 c8 c <c c'>4 <bes bes'>
    }
  }

  \repeat volta 2 {
    <a f' a>2 <a f' a>
    <a f' a> <bes g' bes>4 <a f' a>
    <c a' c>2 <a f' a>
    r4 <a f' a> <c a' c> <a f' a>
    <c a' c>2 <a f' a>
    <c a' c> <d bes' d>
    <c a' c>4 <b gis' b> <bes g' bes>2
    r4 c e f
    <c e g>2 <c e g>
    <c e g> <c e g>4 <c f a>
    <c g' bes>2 <c e g>
    r4 <c e g> <c g' bes> <c e g>
    <c g' bes>2 <c e g>
    <c a' c> <c g' bes>
    <c g' bes>4 <c f a> <c f a>2
    r4 c8 c <c a' c>4 <bes g' bes>
    <a f' a>2 <a f' a>
    <a f' a> <bes g' bes>4 <a f' a>
    <c a' c>2 <a f' a>
    r4 <a f' a> <c a' c> <a f' a>
    <c a' c>2 <a f' a>
    <c a' c> <cis a' cis>
    <e c' e>4. <d bes' d>8 <d bes' d>2
    r4 <d bes' d> <cis bes' cis> <d bes' d>
    <g g'>2 <f f'>
    <e e'> <d d'>4. <b b'>8
    <d d'>2 <c c'>
    r4 <a f' a> <c a' c> <a f' a>
  }
  \alternative {
    {
      <c a' c>2 <a f' a>
      <a c a'> <g bes g'>
      <f a f'>4 c'8 c c4 c
      c8 r c4\fermata <c a' c>\fermata <bes g' bes>\fermata
    }
    {
      <e c' e>2 <d bes' d>
      <c bes' c> c'8 bes a g
      f4 r c'8 cis d e
      f4 <f a, f>8 <f a, f><f a, f>4 r
    }
  }
}

left = \relative c' {
  \global
  \tuplet 3/2 { c,4 e g } c2~
  c4 g8 g c4 g
  c1 ~
  c

  \tuplet 3/2 { e,4 g c } e2 ~
  e4 c8 c e4 c
  e1 ~
  e

  <c, e g>2 <c f a>
  <c e g> <c f a>
  <c e g> r4 <g b f'>4
  <c e> g8 g g r r4

  \repeat volta 2 {
    c <e g c> g, <e' g c>
    c <e g c> g, <e' g c>
    c <e g c> g, <e' g c>
    d <f g b> g, <f' g b>
    d <f g b> g, <f' g b>
    d <f g b> g, <f' g b>
    d <f g b> g, <f' g b>
    c <e g c> g, <e' g c>
    c <e g c> g, <e' g c>
    c <e g c> g, <e' g c>
    c <e g c> g, <e' g c>
    b <e g b> b <e g b>
    e <g b> b, <g' b>
    cis, <fis a b> b, <fis' a b>
    cis <fis a b> b, <fis' a b>
  }
  \alternative {
    { <e g b> b' e2 }
    { <e, g b>4 r r2 }
  }

  \repeat volta 2 {
    c4 <g' c e>8 <g c e> <g c e>4 r
    c, <g' c e>8 <g c e> <g c e>4 r
    d <g b f'> g, <g' b f'>
    d <g b f'> g, <g' b f'>
    d <g b f'> g, <g' b f'>
    d <g b f'> g, <g' b f'>
    c, <g' c e> g, <g' c e>
    <c, c' e> r r2
    c4 <g' c e>8 <g c e> <g c e>4 <g c e>
    a, <g' a cis>8 <g a cis> <g a cis>4 <g a cis>
    d4 <f a d> a, <f' a d>
    fis, <fis' c' dis> fis, <fis'  c' dis>
  }
  \alternative {
    {
      g,4 <g' c e> g, <g' c e>
      g, <g' b f'> g, <g' b f'>
      <c, g' c> g'8 g g4 g
      g r r2
    }
    {
      g,4 r <g g'>2
      <e e'> <c c'>
      <g g'>4 r <g'' b f'>2
      <c, g' c>4 <c g' c>8 <c g' c> <c g' c>4 r
    }
  }

  % Trio
  \key f \major
  f4 f8 f f4 a
  c c8 c c4 r
  <c a f>2 <c a f>
  <c g c,>4 <c g c,>8 <c g c,> <c g c,>4 r
  g g8 g g4 bes
  d d8 d d4 r
  <gis, f b,>2 <bes g c,>
  <f a>4 <f a c> c <f a c>
  
  \repeat volta 2 {
    f4 <a c> c, <f a c>
    f <a c> c, <f a c>
    f <a c> c, <f a c>
    f <f a c>8 <f a c> <f a c>4 r
    bes <bes c> g <bes c>
    e, <g bes c> c, <g' bes c>
    f <a c> c, <a' c>
    f <f a c>8 <f a c> <f a c>4 <f a c>
    
    f4 <a c> c, <f a c>
    f <a c> c, <a' c>
    f <a c> c, <a' c>
    f <f a c>8 <f a c> <f a c>4 <f a c>
    c' <c e> a <c e>
    e, <a c> c, <a' c>
    e <gis d'> e <e b' d>
  }
  \alternative {
    {
      <a c>4 r <c, g' c>2
    }
    {
      <a' c>4 r r2
    }
  }

  \repeat volta 2 {
    f4 <a c> c, <a' c>
    f <a c> c, <a' c>
    f <a c> c, <a' c>
    f <a c> c, <a' c>
    f <a c> c, <a' c>
    f <a c> c, <a' c>
    e <g bes c> c, <g' bes c>
    e <g bes c> c, <g' bes c>
    e <g bes c> c, <g' bes c>
    e <g bes c> c, <g' bes c>
    e <g bes c> c, <g' bes c>
    e <g bes c> c, <g' bes c>
    e <g bes c> c, <g' bes c>
    e <g bes c> c, <g' bes c>
    f <a c> c, <a' c>
    f r r2
    f4 <a c> c, <a' c>
    f <a c> c, <a' c>
    f <a c> c, <a' c>
    f <a c> c, <a' c>
    f <a c> c, <a' c>
    f <a c es> f <a c es>
    bes, <f' bes d> bes, <f' bes d>
    bes, <f' bes d> bes, <f' bes d>
    g, <g' b f'> g, <g' b f'>
    g, <g' b f'> b, <g' b f'>
    c, <f a c>8 <f a c> <f a c>4 <f a c>
    c <f a c> c <f a c>
  }
  \alternative {
    {
      c <f a c> c <f a c>
      c <g' bes c> c, <g' bes c>
      <f a c> c'8 c c4 c
      c8 r r4\fermata r\fermata r\fermata
    }
    {
      c, <g' bes c> c, <g' bes c>
      c, <g' bes c> c, <g' bes c>
      <f a c> r <c g' bes>2
      <f a>4 <f a c>8 <f a c> <f a c>4 r
    }
  }
}

pedal = \relative c, {
  \global
  
  \tuplet 3/2 { c4 e g } c2~
  c4 g c g
  c1~
  c
  \tuplet 3/2 { e,4 g c } e2~
  e4 c e c
  e1~
  e
  c2 f
  c f
  c r4 f
  c r r2
  
  \repeat volta 2 {
    c2 g
    c g
    c g
    d' g,
    d' g,
    d' g,
    d' g,
    c g
    c g
    c g
    c g
    b b
    e b
    fis' b,
    fis' b,
  }
  \alternative {
    {
      e4 b, e r
    }
    {
      e4 r r2
    }
  }
}

glockenspiel = \relative c'' {
  R1*12
  \repeat volta 2 {
    R1*7
    r2. e4
    dis e b c
    a'4 r8 a a4 e
    dis e b c
    g'4 r8 g g4 g
    fis g dis e
    b' r8 b b4 c
    b a g fis
  }
  \alternative {
    {
      e4 r r2
    }
    {
      e4 g a c
    }
  }
  
  \repeat volta 2 {
    e2.\( b4\)
    c2.\( g4\)
    b r8 f f2~
    f4 g\( c a\)
    b r8 f f2~
    f4 g b a
    a r8 fis g2~
    g4 g a c
    e2. e4
    f2.\( e4\)
    e r8 d d2~
    d4 c a fis
  }
  \alternative {
    {
      a4 r8 g g2~
      g4 f\( b, e\)
      c r r2
      r4 g' a c
    }
    {
      R1*4
    }
  }
}

drum = \drummode {
  \global
  r1 r r
  \repeat tremolo 16 sna16
  r1 r r
  \repeat tremolo 16 sna16
  \repeat tremolo 4 sna16 r4 sna4 sna8 sna
  sna2 sna4 r4
  sna4 r2 \repeat tremolo 4 sna16
  r1
  
  \repeat volta 2 {
    r1
    <bd sna>4 r r2
    r1
    <bd sna>4 r r2
    r1
    <bd sna>4 r r <bd sna>
    <bd sna>4 r r <bd sna>
    <bd sna>4 r r2
    r1
    <bd sna>4 r r2
    r1
    <bd sna>4 r r2
    r1
    \repeat tremolo 8 sna8
    \repeat tremolo 8 sna8
  }
  \alternative {
    {
      sna4 r r2
    }
    {
      sna4 r r2
    }
  }
  
  \repeat volta 2 {
    R1*8
    <bd sna>4 sna8 sna sna4 sna
    <bd sna>4 sna8 sna sna4 sna
    <bd sna>4 sna r sna
    \repeat tremolo 16 sna16
  }
  \alternative {
    {
      sna4 r8. sna16 \repeat tremolo 8 sna16
      r4 sna r sna
      sna r r2
      r1
    }
    {
      \repeat tremolo 4 sna16 r4 \repeat tremolo 4 sna16 r4
      \repeat tremolo 4 sna16 r4 \repeat tremolo 4 sna16 r4
      \repeat tremolo 4 sna16 r4 \repeat tremolo 8 sna16
      <bd sna>4 <bd sna>8 <bd sna> <bd sna>4 r
    }
  }
  
  r1
  r
  \repeat tremolo 4 sna16 r4 \repeat tremolo 4 sna16 r4
  sna4 sna8 sna sna4 r
  r1
  r
  sna4 r \repeat tremolo 8 sna16
  r1
}

organPart = <<
  \new PianoStaff \with {
    instrumentName = "Organ"
    shortInstrumentName = "Org."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \new Staff = "pedal" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \pedal }
>>

glockenspielPart = \new Staff \with {
  instrumentName = "Glockenspiel"
  shortInstrumentName = "Gls."
  midiInstrument = "glockenspiel"
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
    \tempo 4=230
  }
}
