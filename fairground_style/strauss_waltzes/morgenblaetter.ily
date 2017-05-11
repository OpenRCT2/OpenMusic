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
