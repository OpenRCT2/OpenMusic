
global_fledermaus = {
  \key a \major
  \time 3/4
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
  
  e8 dis e fis e d
  cis bis cis d cis b
  a cis e4 <cis fis>
  <d fis>2.
  
  \acciaccatura gis8 fis eis fis a gis fis
  d d d4 d
  \acciaccatura gis8 fis eis fis a gis fis
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
}
