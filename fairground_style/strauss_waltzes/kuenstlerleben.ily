
global_kuenstlerleben_one = {
  \key c \major
  \time 6/8
  \set Score.tempoHideNote = ##t
  \tempo 4 = 80
}

global_kuenstlerleben_two = {
  \time 3/4
  \set Score.tempoHideNote = ##t
  \tempo 4 = 200
}

second_melody_kuenstlerleben = \relative c' {
  \global_kuenstlerleben_one
  e2 r8 e'8
  e4 e8 e4~( e16. d32)
  d4( c8) e,4 c'8
  c4 c8 c4~( c16. b32)
  b4( a8) d,4.~
  
  \global_kuenstlerleben_two
  d4 r d8 e
  a r r4 a8 r
  a r r4 c,8 d
  g r r4 g8 r
  g r r4 b,8 c
  f r r4 f8 r
  g,2.~
  g4 r2
  
  r2 r8 e''8
  e4 r e
  e2~( e8 d)
  d2( c4)
  e,4 r4. c'8
  c4 r c
  c2~( c8 b)
  b2( a4)
  d, r d'8 e
  
  a8 r4. a8 r
  a8 r4. c,8 d
  g8 r4. g8 r
  g r4. b,8 c
  f8 r4. f8 r
  <d f>2( <b d>8 e)
  <<
    { c2. }
    \\
    { g4 g g }
  >>

  r2 b8 c |
  \repeat volta 2 {
    d2 g8( a |
    b2) a8 g |
    \acciaccatura fis a2 g8 fis |
    \acciaccatura e g2 a8 e' |
  }
  \alternative {
    {
      <a, d,>2 a8 e' |
      <a, d,>2 a8 e' |
      <g, d b>2 g8 e' |
      <g, d b>2 b,8 c |
    }
    {
      R2.
    }
  }

}

melody_kuenstlerleben = \relative c' {
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
  <c e>4 r g
  
  <g c,>2.(
  <gis b,>)
  <<
    { e4 r c'
      e r2
    
      c2.~
      c }
    \\
    { <a, a'>2.~
      <a a'>2 r4
    
      e'4 r r
      e r r }
  >>
  
  <f, f'>2.
  R2.
  
  c''8 r4. c8 r
  c r r2
  b8 r4. b8 r
  b r r2
  R2.
  g2( d8 e)
  c2.
}

left_kuenstlerleben = \relative c {
  \global_kuenstlerleben_one
  R2.
  \repeat unfold 2 { e8 g c e c g }
  e g c e, gis c
  f, a d f4.~
  
  \global_kuenstlerleben_two
  f4 r2
  \repeat unfold 2 { r4 <a, f'> <a f'> }
  \repeat unfold 2 { r4 <g e'> <g e'> }
  \repeat unfold 2 { r4 <g f'> <g f'> }
  \repeat unfold 3 { r4 <g e'> <g e'> }
  r4 <gis e'> <gis e'>
  \repeat unfold 2 { r4 <a e'> <a e'> }
  r4 <g e'> <g e'>
  r4 <gis e'> <gis e'>
  r4 <a d> <a d>
  <a d> r2
  
  \repeat unfold 2 { r4 <a f'> <a f'> }
  \repeat unfold 2 { r4 <g e'> <g e'> }
  r4 <g f'> <g f'>
  <g f'>2.
  <g e'>4 <g e'> <g e'>
  
}

pedal_kuenstlerleben = \relative c {
  \global_kuenstlerleben_one
  R2.*5
  
  \global_kuenstlerleben_two
  R2.
  \repeat unfold 2 { f4 r2 }
  \repeat unfold 2 { g4 r2 }
  \repeat unfold 2 { g,4 r2 }
  \repeat unfold 2 { c2 g'4 }
  
  c,2 c4
  b2 b4
  a2 a4
  a2 a4
  e'2 e4
  e2 e4
  f2 f4
  f4 r r
  
  \repeat unfold 2 { f4 r r }
  \repeat unfold 2 { g4 r r }
  g,4 r r
  g2.
  c4 c c
}
