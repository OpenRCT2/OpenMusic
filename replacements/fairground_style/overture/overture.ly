\version "2.18.2"
\include "../../include/include.ly"
#(define ac:normalFactor '(15 . 16))

\header {
  dedication = "OpenRCT2/OpenMusic"
  title = "Overture to Poet and Peasant"
  arranger = "Christian Friedrich Coors"
  subtitle = "Dichter und Bauer"
  composer = "Franz von Suppé"
  tagline = "https://www.github.com/OpenRCT2/OpenMusic"
  copyright = "Arrangement CC-BY-SA 4.0 https://creativecommons.org/licenses/by-sa/4.0/"
}

global_andante = {
  \key d \major
  \time 4/4
}

global_allegro = {
  \key g \minor
  \time 4/4
  \set Score.tempoHideNote = ##t
  \tempo 4 = 170
}

global_allegro_two = {
  \time 2/4
  \set Score.tempoHideNote = ##t
  \tempo 4 = 150
}

global_allegretto = {
  \time 3/8
  \set Score.tempoHideNote = ##t
  \tempo 4 = 120
}

global_allegretto_two = {
  \time 2/4
  \set Score.tempoHideNote = ##t
  \tempo 4 = 150
}

second_melody_pattern = \relative c'' {
  f8 a4 g8~
  g f4 es8~
  es d4 c8~
  c bes4 ges8~
  ges f4 a8
  d4 c
  c8 bes4 d8
  g4 f
  f8 a4 g8~
  g f4 es8~
  es d4 c8~
  c bes4 ges8~
  ges f4 a8
  d4 c
}

second_melody = \relative c'' {
  \global_andante
  
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
  R1
  b1(
  a2) r
  a( ais
  b gis)
  R1*4
  b1(
  a2) r
  R1*14
  
  bes1(
  d)
  R1*3
  \repeat unfold 2 {
    <g, b>2( <g bes>
    <fis a d>4.) r8 r2
  }
  r4
  \tuplet 3/2 { d8 fis a } \tuplet 3/2 { d fis a( } d4
  <d, fis a d>2) r
  
  \global_allegro
  R1*3
  <d f bes>1~
  <d f bes>8 <d d'>4 <c c'> <bes bes'> <a a'>8~
  <a a'> <g g'>4 <f f'> <es es'> d'8
  <c f,>8 <bes f> r4 <f bes es>8 <f bes d> r4
  <bes d g>8 <bes d f> r4 <d f c'>8 <d f bes>8 r4
  
  R1*4
  <f a d>1~
  <f a d>8 <d d'>4 <c c'> <bes bes'> <a a'>8~
  <a a'> <g g'>4 <f f'> <e e'> d'8
  <d f,> <a f> r4 <f' a,>8 <d a> r4
  <a' d,>8 <f d> r4 <bes f d>8 <a f d> r4
  
  R1
  \repeat unfold 3 { f2~ f8 d16( e f g f e) }
  f2~ f8 e16( f g f e d)
  cis8 r <a cis e a>4 r8 g f e
  d cis d e f e d f
  e r <a cis e a>4 r8 g f e
  d cis d e f e d f
  e r <a cis e a>4 r <a cis e a>
  r \repeat unfold 3 { <a cis e a>8 r }
  
  \global_allegro_two
  R2*8
  
  a'4.( g16 f)
  f4.( es16 d)
  d4.( c16 bes)
  a4.( a16 g)
  f4.( e16 f)
  g4.( a16 bes)
  c4.( b16 c)
  cis4.( bis16 cis)
  d4.( cis16 d)
  
  g,4 g8 bes
  es g, bes es
  g r r4
  
  R2
  f,4 f8 a
  d f, a d
  f r r4
  R2
  r8 e4.~
  e8 r r4
  r8 e4.~
  e8 r r4
  R2*4
  
  R2*15
  bes8 r c r
  d c bes r
  des r es r
  f es des r
  
  \repeat unfold 2 {
    f4. g16 f
    f es d c bes4
  }
  
  g8 r a r
  bes a g r
  es' r f r
  g f es r
  
  \repeat unfold 2 {
    g4. as16 g
    g f es d c4
  }
  \repeat unfold 2 {
    a'4. bes16 a
    a g f e d4
  }
  a'4 a~
  a a~
  a a
  a a
  
  \global_allegretto
  <es a>4.~
  <es a>8( <es g> <es f>)
  <es g> r <es g>
  <d f>4.
  
  <es g>~
  <es g>8( <d f> <c es>)
  <d f> r <d f >
  <bes d>4.
  
  <es a>4.~
  <es a>8( <es g> <es f>)
  <es g> r <es g>
  <d f>4.
  
  <es g>~
  <es g>8( <d f> <c es>)
  <bes d>4.~
  <bes d>8 r r
  
  R4.*12
  
  <c es>4.~
  <c es>8( <bes d> <a c>)
  <d f> r <d f>
  <d f>4 <d g>8
  <fis a>4.~
  <fis a>8( <eis gis> <fis a>)
  <g bes>4.~
  <g bes>
  <g bes>~
  <g bes>8( <f a> <es g>)
  <f a> r <es g>
  <d f>4 f,8
  <g es'>4.~
  <g es'>8 <f d'> <es c'>
  
  \global_allegretto_two
  <d bes'>8 r r4
  
  R2*8
  f8\trill e16 f bes8 d
  g,\trill fis16 g c8 bes
  a g'16 f f8 g16 f
  f8 g16 f f8 g16 f
  f8 g16 f f8 g16 f
  f8 g16 f e f g a
  
  <d, f bes>8 r <f a c> r
  <f bes d>4 r8 a16 bes
  c bes e, f g f cis d
  es d d c bes8 r
  
  <bes d g> r <d fis a> r
  <d g bes>4 r8 fis16( g
  a g cis, d es d a bes)
  c( bes a g g8) r
  
  R2*2
  c8( b16 c d e f g
  a c, c' c, c' c, c' c,)
  
  f8( e16 f g a bes c)
  es d a bes c bes fis g
  a g d es f es c g'
  g f g f g f g f
  g f e f g a bes c
  es d a bes c bes fis g
  a g d es f es c g'
  \repeat unfold 4 {
    g f g f g f g f
  }
  g f g f g f e, f
  a g fis g bes a gis a
  c bes a bes d c b c
  es d cis d f es d es
  
  R2*14
  \repeat volta 2 {
    bes8 a16 bes c bes a g
    f8 d'16 es f es d c
    bes8 e16 f g f es d
    c8 fis16 g a g f es
    
    ges,8 bes des ges
    bes ges des ges,
    ges4 ges
    ges ges
    e8 g bes des
    e des bes g
    e4 e
    e e
    
    d4 bes8 e16 f
    g4 f8 g16 a
    c4 bes8 a16 bes
    es4 d8 es16 d
    d4 c8 b16 c
    d4 c8 b16 c
    g'4 f8 e16 f
    g4 f8 es16 c
  }
  
  \repeat unfold 2 {
    bes8 a16 bes c bes a g
    f8 <c' es> <bes d> <a c>
  }
  
  \repeat unfold 4 {
    bes8( d16 es f es d c)
  }
  bes'8 a bes4
  bes8 d bes d
  f, e f4
  f8 bes f bes
  d, cis d4
  d8 f d f
  <bes, bes'>4 <bes d f bes>8 <bes d f bes>
  <bes d f bes>4 <bes d f bes>
  <bes d f bes> <bes d f bes>8 <bes d f bes>
  <bes d f bes>4 <bes d f bes>
  <bes d f bes> r
  <d f d'> r
  <bes d f bes> r
  <d f d'> r
  bes2~
  bes~
  bes~
  bes
}

melody = \relative c' {
  \global_andante
  
  fis4. fis16 fis fis8 fis16 fis fis8 fis16 fis
  fis2\( fis4\) r8 fis16 fis
  fis4.\( fis8 a8. g16 e8. g16
  fis2 d4\) r
  
  d4. d16 d d8 d16 d d8 fis16 fis
  fis2 d4 fis
  e1
  e2. r4
  
  \repeat unfold 2 {
    <b' d fis>4. <b d fis>16 <b d fis> <b d fis>4 <b d fis>
    <a cis a'>1
  }
  
  r1
  \tuplet 3/2 { d,8 a' g } \tuplet 3/2 { fis e d } \tuplet 3/2 { cis b a } \tuplet 3/2 { gis a d }
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
  
  d4 \tuplet 3/2 { r8 <fis a> <eis gis> } \tuplet 3/2 { <g b>8 <fis a>4~ } \tuplet 3/2 { <fis a>8 <fis d'> <eis cis'> }
  \tuplet 3/2 { <g e'>8 <fis d'>4~ } \tuplet 3/2 { <fis d'>8 <a fis'> <g e'> } \tuplet 3/2 { <g e'> <fis d'> <a cis> } \tuplet 3/2 { <a cis> <g b> <fis a> }
  \tuplet 3/2 { <fis a>8 <e g>4\( } g4\)~ g8.\( fis16 e8. d16\)
  d8.\( cis16 fis8. e16\) a8.\( g16~ \tuplet 3/2 { \acciaccatura a8 g8 fis e\) }
  eis4\( \tuplet 3/2 { fis8\) <fis a> <eis gis> } \tuplet 3/2 { <g b> <fis a>4~ } \tuplet 3/2 { <fis a>8 <fis d'> <eis cis'> }
  \tuplet 3/2 { <g e'>8 <fis d'>4~ } \tuplet 3/2 { <fis d'>8 <g fis'> <g e'> } \tuplet 3/2 { <g e'> <fis d'> <a cis> } \tuplet 3/2 { <a cis> <g b> <fis a> }
  \tuplet 3/2 { <fis a>8 <e g>4 } g~ g8. fis16 e8. d16
  d8. cis16 fis8. e16 cis'8. b16~ \tuplet 3/2 { \acciaccatura cis8 b8 a g  }
  
  f2\( e8 f \tuplet 3/2 { a g f\) }
  g4\( f e8 f \tuplet 3/2 { a g f\) }
  <f, bes d f>4 <fis bes d fis> <g bes d g> <gis bes d gis>
  <a d fis a>2 \tuplet 3/2 { d'8 cis b } \tuplet 3/2 { a g fis }
  <a, cis fis>4\( <a cis e>\) b'2
  b~ b8 a g e
  d4 \tuplet 3/2 { r8 <fis a> <eis gis> } \tuplet 3/2 { <g b> <fis a>4~ } \tuplet 3/2 { <fis a>8 <fis d'> <a cis> }
  <g~ b>2( <g~ bes d>4 <g bes e>
  <fis a fis'>4) \tuplet 3/2 { r8 <fis a> <eis gis> } \tuplet 3/2 { <g b> <fis a>4~ } \tuplet 3/2 { <fis a>8 <fis d'> <a cis> }
  <g~ b>2( <g~ bes d>4 <g bes e>
  <fis a fis'>2) \tuplet 3/2 { d,8 fis a } \tuplet 3/2 { d fis a }
  d1(
  
  <fis, a d>2) r
  
  \global_allegro
  
  R1*3
  <d' f bes>1~
  <d f bes>8 <d d'>4 <c c'> <bes bes'> <a a'>8~
  <a a'> <g g'>4 <f f'> <es es'> d'8
  <c f,>8 <bes f> r4 <f bes es>8 <f bes d> r4
  <bes d g>8 <bes d f> r4 <d f c'>8 <d f bes>8 r4
  
  R1*4
  <f a d>1~
  <f a d>8 <d d'>4 <c c'> <bes bes'> <a a'>8~
  <a a'> <g g'>4 <f f'> <e e'> d'8
  <d f,> <a f> r4 <f' a,>8 <d a> r4
  <a' d,>8 <f d> r4 <bes f d>8 <a f d> r4
  
  R1
  \repeat unfold 3 { f2~ f8 d16( e f g f e) }
  f2~ f8 e16( f g f e d)
  cis8 r <a cis e a>4 r8 g f e
  d cis d e f e d f
  e r <a cis e a>4 r8 g f e
  d cis d e f e d f
  e r <a cis e a>4 r <a cis e a>
  r \repeat unfold 3 { <a cis e a>8 r }
  
  \global_allegro_two
  a'4.( g16 f)
  f4.( es16 d)
  d4.( c16 bes)
  a4.( g16 f)
  es4.( d16 es)
  g4. bes8
  bes4.( a16 gis)
  a4.( gis16 a)
  
  a'4.( g16 f)
  f4.( es16 d)
  d4.( c16 bes)
  a4.( a16 g)
  f4.( e16 f)
  g4.( a16 bes)
  c4.( b16 c)
  cis4.( bis16 cis)
  d4.( cis16 d)
  <es, g bes es>2~
  <es g bes es>~
  <es g bes es>8 r bes'8 g
  es g bes es
  <d a f d>2~
  <d a f d>~
  <d a f d>8 r a f
  d f a d
  \repeat unfold 2 {
    cis2~
    \tuplet 3/2 { cis8 cis d } \tuplet 3/2 { e d cis }
  }
  cis8 <g bes e g>4 <g bes e g>8
  r <g bes e g>4 <g bes e g>8
  \repeat unfold 2 { r8 <g bes e g> r <g bes e g> }
  
  \second_melody_pattern
  bes8 g16 f e f g a
  <bes f d>8 r <c a f> r
  <f, bes d> <f a c> <f bes> r
  <f as des> r <as c es> r
  <as des f> <as c es> <as des> r
  
  R2*4
  <d, g>8 r <d fis a> r
  <d g bes> <d fis a> <d g bes,> r
  <g bes es> r <bes d f> r
  <bes es g> <bes d f> <bes es> r
  
  R2*12
  
  \global_allegretto
  R4.*16
  \repeat unfold 2 {
    d4.
    e8 fis e
    d fis b
    a e fis
  }
  
  \repeat unfold 4 {
    d cis d
  }
  
  R4.*14
  
  \global_allegretto_two
  <d, bes'>8 r r4
  \repeat unfold 2 {
    f8\trill e16 f bes8 d
    g,\trill fis16 g c8 bes
    a\trill gis16 a g'8 f
    es( d16 c) bes8 a16 g
  }
  f8\trill e16 f bes8 d
  g,\trill fis16 g c8 bes
  a g'16 f f8 g16 f
  f8 g16 f f8 g16 f
  f8 g16 f f8 g16 f
  f8 g16 f e f g a
  
  <d, f bes>8 r <f a c> r
  <f bes d>4 r8 a16 bes
  c bes e, f g f cis d
  es d d c bes8 r
  
  <bes d g> r <d fis a> r
  <d g bes>4 r8 fis16( g
  a g cis, d es d a bes)
  c( bes a g g8) r
  
  \repeat unfold 2 {
    c( b16 c d e f g
    a c, c' c, c' c, c' c,)
  }
  
  f8( e16 f g a bes c)
  es d a bes c bes fis g
  a g d es f es c g'
  g f g f g f g f
  g f e f g a bes c
  es d a bes c bes fis g
  a g d es f es c g'
  \repeat unfold 4 {
    g f g f g f g f
  }
  g f g f g f e, f
  a g fis g bes a gis a
  c bes a bes d c b c
  es d cis d f es d es
  
  \second_melody_pattern
  
  \repeat volta 2 {
    bes8 a16 bes c bes a g
    f8 d'16 es f es d c
    bes8 e16 f g f es d
    c8 fis16 g a g f es
    des8 <des ges bes>16 <des ges bes> <des ges bes>8 <des ges bes>
    \repeat unfold 4 { <des ges bes> }
    \repeat unfold 4 { a'16 bes bes bes }
    
    \repeat unfold 2 { <e, g bes des>8 <e g bes des>16 <e g bes des> <e g bes des>8 <e g bes des> }
    \repeat unfold 4 { c'16 des des des }
    d4 bes8 e,,16 f
    g4 f8 g16 a
    c4 bes8 a16 bes
    es4 d8 es16 d
    d4 c8 b16 c
    d4 c8 b16 c
    g'4 f8 e16 f
    g4 f8 es16 c
  }
  
  \repeat unfold 2 {
    bes8 a16 bes c bes a g
    f8 <c' es> <bes d> <a c>
  }
  
  \repeat unfold 4 {
    bes8( d16 es f es d c)
  }
  bes'8 a bes4
  bes8 d bes d
  f, e f4
  f8 bes f bes
  d, cis d4
  d8 f d f
  <bes, bes'>4 <bes d f bes>8 <bes d f bes>
  <bes d f bes>4 <bes d f bes>
  <bes d f bes> <bes d f bes>8 <bes d f bes>
  <bes d f bes>4 <bes d f bes>
  <bes d f bes> r
  <d f d'> r
  <bes d f bes> r
  <d f d'> r
  <bes d f bes>2~
  <bes d f bes>~
  <bes d f bes>~
  <bes d f bes>
}

left_pattern = \relative c {
  \repeat unfold 2 { <f c' es>8 <f c' es> <f c' es> <f c' es> }
  \repeat unfold 2 { <f bes d> <f bes d> <f bes d> <f bes d> }
  \repeat unfold 2 { <f a es'> <f a es'> <f a es'> <f a es'> }
  \repeat unfold 2 { <f bes d> <f bes d> <f bes d> <f bes d> }
  <f c' es>8 <f c' es> <f c' es> <f c' es>
  <f a es'> <f a es'> <f a es'> <f a es'>
  \repeat unfold 2 { <f bes d> <f bes d> <f bes d> <f bes d> }
  \repeat unfold 2 { <f a es'> <f a es'> <f a es'> <f a es'> }
}

left = \relative c' {
  \global_andante
  
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
  \tuplet 3/2 { r16 g,,( b } \tuplet 3/2 { d g b } d8) r8 \tuplet 3/2 { r16 g,,( bes } \tuplet 3/2 { d g bes } d8) r8
  \tuplet 3/2 { r16 fis,,( a } \tuplet 3/2 { d fis a } d8) r8 \tuplet 3/2 { r16 fis,,( a } \tuplet 3/2 { d fis a } d8) r8
  \tuplet 3/2 { r16 g,,( b } \tuplet 3/2 { d g b } d8) r8 \tuplet 3/2 { r16 g,,( bes } \tuplet 3/2 { d g bes } d8) r8
  \tuplet 3/2 { r16 fis,,( a } \tuplet 3/2 { d fis a } d8) r8 \tuplet 3/2 { r16 fis,,( a } \tuplet 3/2 { d fis a } d8) r8
  \tuplet 3/2 { r16 fis,,( a } \tuplet 3/2 { d fis a } d8) r8 \tuplet 3/2 { r16 fis,,( a } \tuplet 3/2 { d fis a } d4
  <fis, a d>2) r
  
  \global_allegro
  \repeat unfold 3 { \repeat unfold 8 { bes,16 a } }
  \repeat unfold 8 { <d f bes>8 }
  <d f bes> r <d f bes>4 <d f bes> <d f bes>
  \repeat unfold 4 { <d f bes> }
  \repeat unfold 4 { <d f bes>8 <d f bes> r4 }
  
  R1
  \repeat unfold 3 { \repeat unfold 8 { a16 gis } }
  \repeat unfold 8 { <d' f a>8 }
  <d f a> r <d f a>4 <d f a> <d f a>
  \repeat unfold 4 { <d f a> }
  \repeat unfold 4 { <d f a>8 <d f a> r4 }
  
  R1
  \repeat unfold 4 { <gis b d f>8 } <gis b d f> r <gis b d f> r
  \repeat unfold 4 { <a d f>8 } <a d f> r <a d f> r
  \repeat unfold 4 { <bes d f>8 } <bes d f> r <bes d f> r
  <gis b d f> <gis b d f> <b d f> <b d f> <b d f> r <b d f> r
  <a cis e> r <e a cis e>4 r8 g f e
  d cis d e f e d f
  e r <e a cis e>4 r8 g f e
  d cis d e f e d f
  e r <e a cis e>4 r <e a cis e>
  r \repeat unfold 3 { <a cis e>8 r }
  
  \global_allegro_two
  \repeat unfold 4 { <f a d>8 <f a d>16 <f a d> <f a d>8 r }
  \repeat unfold 2 { <g bes es>8 <g bes es>16 <g bes es> <g bes es>8 r }
  \repeat unfold 2 { <e g bes cis>8 <e g bes cis>16 <e g bes cis> <e g bes cis>8 r }
  \repeat unfold 4 { <f a d>8 <f a d>16 <f a d> <f a d>8 r }
  \repeat unfold 4 { <f a c>8 }
  \repeat unfold 4 { <e g bes c>8 }
  \repeat unfold 4 { <f a c>8 }
  \repeat unfold 4 { <e g a cis>8 }
  \repeat unfold 4 { <d f a d>8 }
  <bes es g bes>2~
  <bes es g bes>~
  <bes es g bes>8 r r4
  R2
  <a d f a>2~
  <a d f a>~
  <a d f a>8 r a'8 f
  d f a d
  \repeat unfold 2 {
    r8 <e, g bes cis> <e g bes cis> <e g bes cis>
    <e g bes cis> r r4
  }
  r8 <e g bes cis>4 <e g bes cis>8
  r8 <e g bes cis>4 <e g bes cis>8
  \repeat unfold 2 {
    r8 <e g bes cis> r <e g bes cis>
  }
  \left_pattern
  <f bes d> r r4
  <d f bes>8 r <f a c> r
  <f bes d> <f bes es> <f bes d> r
  <f as des> r <es as c> r
  <as des> <as c es> <as des f> r
  
  \repeat unfold 2 {
    \repeat unfold 4 { <f a es' f>16 } <g es' f> <g es' f> <a es' f> <a es' f>
    \repeat unfold 8 { <bes d f>16 }
  }
  
  <d, g bes>8 r <d f a> r
  <d g bes> <d fis c'> <d g bes> r
  <es g bes> r <d f bes> r
  <es g bes> <d f as> <es g bes> r
  
  \repeat unfold 2 {
    \repeat unfold 4 { <b f' g>16 } <a f' g> <a f' g> <b f' g> <b f' g>
    \repeat unfold 8 { <c es g>16 }
  }
  
  \repeat unfold 2 {
    \repeat unfold 8 { <a cis a'>16 }
    \repeat unfold 8 { <d f a>16 }
  }
  
  R2*4
  
  \global_allegretto
  \repeat unfold 3 {
    \repeat unfold 2 { r8 <a' c es> <a c es> }
    \repeat unfold 2 { r8 <f bes d> <f bes d> }
  }
  \repeat unfold 2 { r8 <a c es> <a c es> }
  \repeat unfold 2 { r8 <bes d f> <bes d f> }
  
  \repeat unfold 4 {
    <a d fis> <a d fis> <a d fis>
    <a cis g> <a cis g> <a cis g>
  }
  <d fis> r r
  R4.*3
  
  r8 <a c es> <a c es>
  r <a c es> <a c es>
  r <f bes d> <f bes d>
  r <f bes d> <f bes d>
  r <fis a d> <fis a d>
  r <fis a d> <fis a d>
  r <g bes d> <g bes d>
  r <g bes d> <g bes d>
  r <g bes es> <g bes es>
  r <g bes es> <g bes es>
  r <f bes d> <f bes d>
  r <f bes d> <f bes d>
  r <a c es> <a c es>
  r <f a c es> <f a c es>
  
  \global_allegretto_two
  \repeat unfold 4 {
    r8 <f bes d>
  }
  r <e g c> r <e g c>
  r <f a c es> r <f a c es>
  \repeat unfold 4 {
    r <f bes d>
  }
  r <g c e> r <g c e>
  r <f a c es> r <f a c es>
  \repeat unfold 4 {
    r <f bes d>
  }
  r <f c' e> r <f c' e>
  
  <f a c es> r <f a c es> r
  <bes des f>4 <b d f>
  <f a c es>8 r r4
  R2
  
  <bes d f>8 r <a c es> r
  <f bes d>4 r
  <f bes d>8 r <bes d> r
  r <f bes d> <f bes d> <f bes d>
  <g bes d> r <a d fis> r
  <g bes d>4 r
  <g bes d>8 r <g bes d> r
  r <g bes d> <g bes d> <g bes d>
  
  \repeat unfold 2 {
    \repeat unfold 4 { <g bes c e> }
    \repeat unfold 4 { <f a c> }
  }
  \repeat unfold 4 { <f a c es> }
  <f bes d> r <f bes d> r
  <g c es> r <g c es> r
  r <f bes d> <f bes d> <f bes d>
  <f a c es> r <f a c es> r
  <f bes d f> r <f bes d f> r
  <es g c es> r <es g c es> r
  <f bes d> r r4
  
  <f bes d>2(
  <f bes des>
  <f bes c>
  <f a c es>4) r
  R2*3
  
  \left_pattern
  
  \repeat volta 2 {
    <f bes d>8 r r4
    <f a c es>8 r r4
    <f bes d>8 r r4
    <f a c es>8 r r4
    
    <ges bes des>8 <ges bes des>16 <ges bes des> <ges bes des>8 <ges bes des>8
    \repeat unfold 4 { <ges bes des>8 }
    \repeat unfold 4 { <ges bes des> r }
    \repeat unfold 2 { <e g bes des>8 <e g bes des>16 <e g bes des> <e g bes des>8 <e g bes des> }
    \repeat unfold 4 { <e g bes des> r }
    \repeat unfold 4 { <f bes d>8 <f bes d>16 <f bes d> <f bes d>8 r }
    \repeat unfold 16 { <f bes c e>16 }
    \repeat unfold 16 { <f a c es>16 }
  }
  
  \repeat unfold 2 {
    <f bes d>8 r r4
    r8 <a c f> <bes d> <c es>
  }
  <bes d f>8 r <f a c es>4(
  \repeat unfold 3 { <bes d>8) r <f a c es>4( }
  <bes d>8) r <f bes d> <f bes d>
  \repeat unfold 20 { <f bes d> }
  <f bes d>4 <f bes d>8 <f bes d>
  <f bes d>4 <f bes d>
  <f bes d> <f bes d>8 <f bes d>
  <f bes d>4 <f bes d>
  <f bes d> r
  <f bes d f> r
  <f bes d f> r
  <f bes d f> r
  <d f bes d f>2~
  <d f bes d f>~
  <d f bes d f>~
  <d f bes d f>
}

pedal_pattern = \relative c, {
  \repeat unfold 3 {
    f4 r
    f r
    bes r
    bes r
  }
  f r
  f r
}

pedal = \relative c {
  \global_andante
  
  R1*12
  d,1~
  \tuplet 3/2 { d8 a'' g } \tuplet 3/2 { fis e d } \tuplet 3/2 { cis b a } \tuplet 3/2 { gis a d }
  a'2 a,
  d,4 r d r 
  \repeat unfold 3 { d r d r }
  a' r ais4 r
  b r gis r
  a r e r
  a r cis, r
  \repeat unfold 4 { d r d r }
  a' r ais r
  b r g r
  a r a2
  R1
  \repeat unfold 2 { d4 r d r }
  \repeat unfold 2 { a r a r }
  d, r d' r
  d r d r
  \repeat unfold 2 { a r a r }
  bes1~
  bes~
  bes(
  a~)
  a~
  a(
  
  d,4) r d r
  \repeat unfold 5 { d r d r }
  d2 r
  
  \global_allegro
  R1*3
  bes'1~
  bes8 r bes4 bes bes
  bes bes bes bes
  \repeat unfold 4 { bes8 bes r4 }
  
  R1*4
  a1~
  a8 r a4 a a
  a a a a
  \repeat unfold 4 { a8 a r4 }
  
  R1
  g2 g8 r g r
  a2 a8 r a r
  bes2 bes8 r bes r
  gis2 gis8 r gis r
  a8 r a4 r2
  R1
  r4 a r2
  R1
  r4 a r a
  r a8 r a r a r
  
  \global_allegro_two
  \repeat unfold 4 { d,8 r r4 }
  g8 r r4
  g8 r r4
  cis,8 r r4
  cis8 r r4
  \repeat unfold 4 { d8 r r4 }
  c2~
  c2(
  f
  e
  d
  es2~)
  es2~
  es8 r r4
  R2
  d2~
  d2~
  d8 r r4
  R2
  \repeat unfold 2 {
    r8 e4.~
    e8 r r4
  }
  r8 e4 e8
  r e4 e8
  e8 r e r
  e r e r

  \pedal_pattern
  bes'4 r
  bes8 r f r
  bes f bes r
  des r as r
  des as des r
  
  \repeat unfold 2 {
    a8 f g a
    bes2
  }
  
  g8 r d r
  g d g r
  es' r bes r
  es bes es r
  
  \repeat unfold 2 {
    r g, a b
    c d es r
  }
  \repeat unfold 2 {
    r a, b cis
    d e f r
  }
  
  R2*4
  
  \global_allegretto
  \repeat unfold 3 {
    f4 r8
    f4 r8
    bes,4 r8
    bes4 r8
  }
  f'4 r8
  f4 r8
  bes4 r8
  bes4 r8
  
  a,4.~
  a~
  a~
  a~
  a~
  a~
  a~
  a(
  d8) r r
  R4.*3
  
  f4 r8
  f4 r8
  bes,4 r8
  bes4 r8
  d,4 r8
  d4 r8
  g4 r8
  g4 r8
  es4 r8
  es4 r8
  f4 r8
  f4 r8
  f4 r8
  f4 r8
  
  \global_allegretto_two
  \repeat unfold 11 {
    bes8. r16 bes8. r16
  }
  f8 r f r
  f2
  f8 r r4
  R2
  
  bes8 r f r
  bes4 r
  bes8 r bes r
  r bes4.
  g8 r d r
  g4 r
  g8 r g r
  r g4.
  e2(
  f
  e
  f)
  f
  bes8 r bes r
  es, r es r
  f2
  f8 r f r
  bes r bes r
  es, r es r
  f r r4
  f2
  f
  f
  f4 r
  R2*3
  
  \pedal_pattern
  
  \repeat volta 2 {
    bes'4 r
    f r
    bes r
    f r
    ges8 bes des ges
    bes ges des ges,
    ges4 ges
    ges ges
    e8 g bes des
    e des bes g
    e4 e
    e e
    \repeat unfold 4 { f4. r8 }
    \repeat unfold 4 { f8 f f f }
  }
  \repeat unfold 2 {
    bes4 r
    r8 f4.
  }
  bes8 r f4(
  bes8) r f4(
  bes8) r f4(
  bes8) r f4(
  bes8) r bes4
  \repeat unfold 18 { bes4 }
  bes r
  bes r
  bes r
  bes r
  bes2~
  bes~
  bes~
  bes
}

glockenspiel = \relative c'' {
  \global_andante
  R1*52
  
  \global_allegro
  R1*3
  d8. d16 d8 d d d d d
  d4 r r2
  R1
  c8 bes r4 es8 d r4
  g8 f r4 c'8 bes r4
  R1*4
  d,8. d16 d8 d d d d d
  d4 r r2
  R1
  d8 a r4 f'8 d r4
  a'8 f r4 bes8 a r4
  
  R1
  gis8 gis gis gis gis r gis r
  a a a a a r a r
  bes bes bes bes bes r bes r
  gis gis bes bes gis r bes r
  a, r a' r r2
  R1
  r4 a r8 g f e
  d cis d e f e d f
  e r a4 r a
  r a a a
  
  \global_allegretto_two
  R2*8
  a4( g8 f)
  f4( es8 d)
  d4( c8 bes)
  a4( a8 g)
  f4( e8 f)
  g4( a8 bes)
  c4( b8 c)
  cis4( bis8 cis)
  d4( cis8 d)
  g,4 g8 bes
  es g, bes es
  g r bes, g
  es g bes es
  f,4 f8 a
  d f, a d
  f r a, f
  d f a d
  \repeat unfold 2 {
    cis2~
    \tuplet 3/2 { cis8 cis d } \tuplet 3/2 { e d cis }
  }
  cis8 g'4 g8
  r g4 g8
  \repeat unfold 2 { r8 g r g }
  R2*21
  f4. g16 f
  f es d c bes4
  R2*6
  g'4. as16 g
  g f es d c4
  R2*2
  a'4. bes16 a
  a g f e d4
  R2*4
  
  \global_allegretto
  f4.
  \repeat unfold 2 {
    f8 g a
    bes r bes
    f r f
  }
  d4.
  f8 fis g
  g gis a
  bes r bes
  f4.
  g~
  g8 f es
  d4.
  
  R4.*26
  g8 f es
  
  \global_allegretto_two
  d8 r r4
  
  R2*4
  f,8\trill e16 f bes8 d
  g,\trill fis16 g c8 bes
  a\trill gis16 a g'8 f
  es( d16 c) bes8 a16 g
  f8\trill e16 f bes8 d
  g,\trill fis16 g c8 bes
  a g'16 f f8 g16 f
  f8 g16 f f8 g16 f
  f8 g16 f f8 g16 f
  f8 g16 f e f g a
  
  bes8 r c r
  d4 r
  R2*2
  g,8 r a r
  bes4 r
  R2*4
  
  c,8( b16 c d e f g
  a c, c' c, c' c, c' c,)
  
  f8( e16 f g a bes c)
  es d a bes c bes fis g
  a g d es f es c g'
  g f g f g f g f
  g f e f g a bes c
  es d a bes c bes fis g
  a g d es f es c g'
  \repeat unfold 4 {
    g f g f g f g f
  }
  g f g f g f e, f
  a g fis g bes a gis a
  c bes a bes d c b c
  es d cis d f es d es
  
  R2*14
  \repeat volta 2 {
    bes8 a16 bes c bes a g
    f8 d'16 es f es d c
    bes8 e16 f g f es d
    c8 fis16 g a g f es
    bes8 bes16 bes bes8 bes
    bes bes bes bes
    \repeat unfold 4 { a16 bes bes bes }
    des8 des16 des des8 des
    des des des des
    \repeat unfold 4 { c16 des des des }
    R2*8
  }
  
  \repeat unfold 2 {
    bes8 a16 bes c bes a g
    f8 es' d c
  }
  
  R2*2
  
  \repeat unfold 2 {
    bes8( d16 es f es d c)
  }
  
  bes'8 a bes4
  bes8 d bes d
  f, e f4
  f8 bes f bes
  d, cis d4
  d8 f d f
  \repeat unfold 2 {
    bes,4 bes8 bes
    bes4 bes
  }
  bes r
  d r
  bes r
  d r
  bes2
  R2*3
}

drum_pattern = \drummode {
  <bd sna hh cymc>4 bd
  \repeat unfold 6 { bd4 bd }
  bd8 bd bd bd
  \repeat unfold 6 { bd4 bd }
}

drum = \drummode {
  R1*12
  
  \repeat tremolo 32 sna32
  \repeat tremolo 32 sna32
  
  R1*38
  
  % Allegro
  \repeat unfold 2 {
    R1*3
    <bd sna>8 \repeat unfold 7 { sna }
    sna r sna4 sna sna
    sna sna sna sna
    \repeat unfold 4 { <bd sna>8 <bd sna> r4 }
    R1
  }
  R1*4
  r4 <bd sna> r2
  R1
  r4 <bd sna> r2
  R1
  r4 <bd sna> r <bd sna>
  r4 <bd sna> <bd sna> <bd sna>
  
  % Allegro 2
  <bd sna hh cymc>4 r
  R2*11
  \repeat unfold 10 {
    sna8 r
  }
  \repeat unfold 2 {
    \repeat unfold 8 {
      sna8
    }
    <bd sna hh cymc>4 r
    R2
  }
  \repeat unfold 2 {
    r8 <bd sna> <bd sna> <bd sna>
    <bd sna hh cymc> r r4
  }
  \repeat unfold 2 { r8 <bd sna>4 <bd sna>8 }
  \repeat unfold 2 { bd8 sna bd sna }
  \drum_pattern
  <bd sna>4 r
  \repeat unfold 2 {
    <bd sna>8 r <bd sna> r
    <bd sna> <bd sna> <bd sna> r
  }
  R2*4
  \repeat unfold 2 {
    <bd sna>8 r <bd sna> r
    <bd sna> <bd sna> <bd sna> r
  }
  R2*12
  
  % Allegretto
  R4.*42
  <bd sna hh cymc>8 r bd r
  \repeat unfold 4 {
    bd8 r bd r
  }
  \repeat unfold 2 {
    <bd sna hh cymc>8 r bd r
    \repeat unfold 3 {
      bd8 r bd r
    }
  }
  bd8 r4.
  R2
  \repeat unfold 2 {
    <bd sna hh cymc>4 <bd sna hh cymc>
    <bd sna hh cymc> r
    R2*2
  }
  \repeat unfold 32 { sna16 }
  <bd sna hh cymc>4 r
  
  \repeat unfold 2 {
    \repeat unfold 2 {
      <bd sna hh cymc>4 <bd sna hh cymc>
    }
    <bd sna hh cymc>4 r
    <bd sna hh cymc>16 \repeat unfold 7 { <sna tamb>16 }
  }
  
  \repeat unfold 16 {
    tamb16
  }
  tamb16 r r8 r4
  
  R2*3
  
  \drum_pattern
  
  \repeat volta 2 {
    \repeat unfold 4 { <bd sna hh cymc tamb>4 sna }
    \repeat unfold 2 {
      \repeat tremolo 16 sna16
      \repeat unfold 4 { <bd sna hh cymc tamb>4 }
    }
    <bd sna hh cymc tamb>4 bd
    \repeat unfold 3 { <bd sna>4 bd }
    \repeat unfold 2 { <bd sna hh cymc tamb>4 <bd sna hh cymc tamb> }
    \repeat unfold 2 { <bd sna hh cymc tamb>8 <bd sna hh cymc tamb> <bd sna hh cymc tamb> <bd sna hh cymc tamb> }
  }
  \repeat unfold 2 {
    <bd sna hh cymc tamb>8 r r4
    r8 <bd sna hh cymc tamb> <bd sna hh cymc tamb> <bd sna hh cymc tamb>
  }
  \repeat unfold 8 { <bd tamb>4 }
  \repeat unfold 24 { <sna tamb>8 }
  \repeat unfold 2 {
    <bd sna hh cymc tamb>4 <bd sna hh cymc tamb>8 <bd sna hh cymc tamb>
    <bd sna hh cymc tamb>4 <bd sna hh cymc tamb>
  }
  <bd sna hh cymc tamb>4 r
  \repeat unfold 3 { <bd tamb sna>4 r }
  <bd sna hh cymc tamb>16 \repeat tremolo 7 { sna16 }
  \repeat tremolo 8 { sna16 }
  \repeat tremolo 8 { sna16 }
  \repeat tremolo 4 { sna16 } sna sna sna <bd sna hh cymc tamb>
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
    \tempo 4=60
  }
}
