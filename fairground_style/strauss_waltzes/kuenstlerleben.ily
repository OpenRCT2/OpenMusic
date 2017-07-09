
global_kuenstlerleben_one = {
  \key c \major
  \time 6/8
  \set Score.tempoHideNote = ##t
  \tempo 4 = 100
}

global_kuenstlerleben_two = {
  \time 3/4
  \set Score.tempoHideNote = ##t
  \tempo 4 = 200
}

second_melody_kuenstlerleben = \relative c' {
  \global_kuenstlerleben_one
  e2 r4
  R2.*4
  
  \global_kuenstlerleben_two
  r2 d'8 e
  <f c'> r r4 <f c'>8 r
  <f c'> r r4 c8 d
  <e b'> r r4 <e b'>8 r
  <e b'> r r4 b8 c
  <d a'> r r4 <d a'>8 r
  <d g>2( <b d>8 dis)
  <c e>2.~
  <c e>4 r2
}

melody_kuenstlerleben = \relative c' {
  \global_kuenstlerleben_one
  e2 r8 e'8
  e4 e8 e4~( e16. d32)
  d4( c8) e,4 c'8
  c4 c8 c4~( c16. b32)
  b4( a8) d,4 r8
  
  \global_kuenstlerleben_two
  r2 d'8 e
  a r r4 a8 r
  a r r4 c,8 d
  g r r4 g8 r
  g r r4 b,8 c
  f r r4 f8 r
  g,2.~
  g4 r r
}