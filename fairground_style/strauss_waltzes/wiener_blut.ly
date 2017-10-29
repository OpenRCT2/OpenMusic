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
  a' r2 |
  r4 d b |
  c'8 r r2 |
  a8 r r2 |
  d,8 r r2 |

  r4 fis4.( g8) |
  e'2.~ |
  e4 b4.( c8) |
  c2.~ |
  c4 b4.( c8) |
  \repeat unfold 2 { g2( b8 c) | }
  f,2.~ |
  f4 gis4.( a8) |
  f'2.~ |
  f4 cis4.( d8) |
  d2.~ |
  d4 c4.( a8 |
  c) r b4.( g8 |
  b) r a4. f8 |
  e2.~ |
  e4 r r
}

melody_wiener_blut = \relative c'' {
  \global_wiener_blut
  R2.*4
  <d f>4. <d f>8 <d f>4~ |
  <d f> <c e> <b d> |
  <f a> r2

  R2.*4
  r4 dis'4.( e8) |
  c'2.~ |
  c4 gis4.( a8) |
  a2.~ |
  a4 gis4.( a8) |
  \repeat unfold 2 { e2( gis8 a) | }

  r4 r8 <b, d g> <b d g> <b d g> |
  <b d g>4 e4.( f8) |
  d'2.~ |
  d4 ais4.( b8) |
  b2.~ |
  b4 a4.( f8 |
  a) r g4.( e8 |
  g) r f4. f8 |
  e2.~ |
  e4 dis4.( e8)
}

left_wiener_blue = \relative c {
  \global_wiener_blut
  R2.*2
  c'2.~ |
  c |
  b~ |
  b |
  R2.*6

  \repeat unfold 6 { r4 <e, g> <e g> | }
  <<
    {
      r4 r8 <b d g> <b d g> <b d g> |
      <b d g>4 r2 |
    }
    \\
    {
      \repeat unfold 2 { r4 <g' b> <g b> | }
    }
  >>
  \repeat unfold 6 { r4 <b, d> <b d> | }
  <<
    {
      r4 r8 <c e g> <c e g> <c e g> |
      <c e g>4 r2 |
    }
    \\
    {
      \repeat unfold 2 { r4 <e' g> <e g> | }
    }
  >>
}

pedal_wiener_blut = \relative c {
  \global_wiener_blut
  R2.*12

  \repeat unfold 3 {
    c4 r2 |
    g4 r2 |
  }
  \repeat unfold 2 { d'4 r2 }
  \repeat unfold 3 {
    g,4 r2 |
    d'4 r2 |
  }

  \repeat unfold 3 {
    c4 r2 |
    g4 r2 |
  }
}
