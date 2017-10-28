global_wiener_blut = {
  \key c \major
  \time 3/4
  \set Score.tempoHideNote = ##t
  \tempo 4 = 200
}

second_melody_wiener_blut = \relative c'' {
  \global_wiener_blut
  d4. d8 d4~ |
  d c b |
  a4. a8 a4~ |
  a g f |
  f4. f8 f4~ |
  f e d |
  a' r r |
  r d b |
  c'8 r r4 r |
  a8 r r4 r |
  d,8 r r4 r |
  
  r4 fis4.( g8) |
  e'2.~ |
  e4 b4.( c8) |
  c2.~ |
  c4 b4.( c8) |
}

melody_wiener_blut = \relative c'' {
  \global_wiener_blut
  R2.*4
  <d f>4. <d f>8 <d f>4~ |
  <d f> <c e> <b d> |
  <f a> r r
  
  R2.*4
  r4 dis'4.( e8) |
  c'2.~ |
  c4 gis4.( a8) |
}

left_wiener_blue = \relative c {
  \global_wiener_blut
  R2.*2
  c'2.~ |
  c |
  b~ |
  b |
  R2.*4
}
