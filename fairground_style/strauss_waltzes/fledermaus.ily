
global_fledermaus = {
  \key a \major
  \time 3/4
  \set Score.tempoHideNote = ##t
  \tempo 4 = 210
}

melody_fledermaus_same = {
  e8 dis e fis e d
  cis bis cis d cis b
  a cis e4 <cis fis>
  <d fis>2.
  
  %\acciaccatura gis8 broken? TODO
  \grace gis8 fis8 eis fis a gis fis
  d d d4 d
  \grace gis8 fis8 eis fis a gis fis
  <a, cis> <a cis> <a cis>4 <a cis>
  e'8 dis e fis e d
  cis bis cis d cis b
  a cis e4 <cis fis>
  <cis eis gis>2.
  gis'8 fisis gis cis bis ais
  fis fis fis4 fis
  fis8 eis fis ais gis bis,
  cis4 r2
}

second_melody_fledermaus = \relative c'' {
  \global_fledermaus
  <cis e>2 <b d>8 <a cis>
  <fis ais>2 b8 d
  <fis a>4 r <fis a>
  <fis a>2.
  a,2 gis8 fis
  dis2 e8 gis
  <d' fis>4 r <d fis>
  <cis fis>2.
  <cis e>2 <b d>8 <a cis>
  <fis ais>2 b8 d
  <fis a>4 r <fis a>
  <fis a>2.
  a,2 gis8 fis
  dis2 e8 gis
  <d' fis>4 r <d e>
  <e, a cis>2 r4
  
  %\melody_fledermaus_same
}


melody_fledermaus = \relative c'' {
  \global_fledermaus
  R2.
  d,4 fis b
  d, fis b
  e, a cis
  e, a cis
  gis d' e
  e, b' d
  a cis e
  a, cis e
  d, fis b
  d, fis b
  e, a cis
  e, a cis
  gis d' e
  e, b' e
  <a, cis e>2 r4
  
  \melody_fledermaus_same
}

left_fledermaus = \relative c {
  \global_fledermaus
  R2.
  \repeat unfold 2 { d4 <fis b> <fis b> }
  \repeat unfold 2 { e <a cis> <a cis> }
  gis <d' e> <d e>
  e, <b' d> <b d>
  \repeat unfold 2 { a <cis e> <cis e> }
  \repeat unfold 2 { d, <fis b> <fis b> }
  \repeat unfold 2 { e <a cis> <a cis> }
  gis <d' e> <d e>
  e, <b' e> <e, b' e>
  a2 r4
  
  \repeat unfold 3 { a,4 <cis e> <cis e> }
  \repeat unfold 2 { b <d fis> <d fis> }
  <e gis b>8 <e gis b> <e gis b>4 <e gis b>
  e,4 <gis' d> <gis d>
  <cis, e a>8 <cis e a> <cis e a>4 <cis e a>
  
  \repeat unfold 3 { a4 <cis e> <cis e> }
  gis <eis' cis> <eis cis>
  gis, <eis' cis> <eis cis>
  <gis, bis dis>8 <gis bis dis> <gis bis dis>4 <gis bis dis>
  gis <dis' fis> <dis fis>
  <cis eis> r2
}


pedal_fledermaus = \relative c, {
  \global_fledermaus
  R2.
  \repeat unfold 2 { d4 r2 }
  \repeat unfold 2 { e4 r2 }
  gis4 r2
  e4 r2
  \repeat unfold 2 { a4 r2 }
  \repeat unfold 2 { d,4 r2 }
  \repeat unfold 2 { e4 r2 }
  gis4 r2
  e4 r e
  a2 r4
  
  \repeat unfold 3 { a4 r2 }
  \repeat unfold 2 { b4 r2 }
  e,2 r4
  e4 r2
  a2 r4
  
  \repeat unfold 3 { a4 r2 }
  \repeat unfold 4 { gis4 r2 }
  cis4 r2
}
