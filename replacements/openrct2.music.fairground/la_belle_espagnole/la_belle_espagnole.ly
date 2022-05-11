\version "2.18.2"
\include "../../include/include.ly"

\header {
  dedication = "OpenRCT2/OpenMusic"
  title = "La Belle Espagnole"
  arranger = "Christian Friedrich Coors"
  subtitle = "Die Schöne Spanierin/Grande Valse espagnole Op. 103"
  composer = "Robert Vollstedt"
  tagline = "https://www.github.com/OpenRCT2/OpenMusic"
  copyright = "Arrangement CC-BY-SA 4.0 https://creativecommons.org/licenses/by-sa/4.0/"
}

global_presto = {
  \key e \minor
  \time 6/8
  \partial 4
}

global_andante_tempo = {
  \set Score.tempoHideNote = ##t
  \tempo 4 = 95
}

global_andante_fermata = {
  \set Score.tempoHideNote = ##t
  \tempo 4 = 60
}

global_andante = {
  \time 9/8
  \global_andante_tempo
}

global_tempo_di_valse = {
  \set Score.tempoHideNote = ##t
  \tempo 4 = 220
  \time 3/4
}

global_one = {
  \set Score.tempoHideNote = ##t
  \tempo 4 = 200
  \time 3/4
  \key e \minor
}

global_one_two_tempo = {
  \set Score.tempoHideNote = ##t
  \tempo 4 = 200
}

global_one_two_fermata = {
  \set Score.tempoHideNote = ##t
  \tempo 4 = 60
}

global_one_two = {
  \key c \major
  \global_one_two_tempo
}

global_two = {
  \key e \minor
  \set Score.tempoHideNote = ##t
  \tempo 4 = 180
  \time 3/4
}

global_two_uebermuetig = {
  \key e \minor
  \set Score.tempoHideNote = ##t
  \tempo 4 = 210
}

global_two_stuermisch = {
  \key d \major % Or b minor?
  \set Score.tempoHideNote = ##t
  \tempo 4 = 220
}

global_three_intro = {
  \key a \major % Or fis minor?
  \set Score.tempoHideNote = ##t
  \tempo 4 = 190
  \time 3/4
}

melody_one_a_tempo = \relative c''' {
  b g e |
  r fis8 g a c |
  \tuplet 3/2 { b( c b } \tuplet 3/2 { g b g } e4) |
  r b' <e e,> |
  <b b,> g e |
  <g g'> fis'8 e d c |
  b2.~ |
  b4 \acciaccatura c8 b ais b c |
  b4 \acciaccatura c8 b ais b4 |
  \tuplet 3/2 { a8( b a) } g r fis r |
  \tuplet 3/2 { g( a g } \tuplet 3/2 { fis g fis } e4) |
  \acciaccatura e8 e'4 d8 c b a |
  g fis e2 |
  fis8 e dis2 |
  e8 g dis fis e4 |
}

melody_one_stuermisch = \relative c'' {
  \tuplet 3/2 { fis8 g fis } e r \tuplet 3/2 { cis d cis } |
  b4( a8) fis' b,4~ |
  b gis8 a d fis |
  \repeat unfold 4 { <cis a'> } <cis a'>4 |
  r4 g8 a cis e |
  \repeat unfold 4 { <d fis b> } <d fis b>4 |
  r fis8 g gis a |
  b4 \tuplet 3/2 { a8 b a } g r |
  
  \tuplet 3/2 { fis g fis } e r \tuplet 3/2 { cis d cis } |
  b4( a8) fis' b,4~ |
  b \acciaccatura b8 a gis a b |
  cis b a b cis d |
  e fis gis a b cis |
}

melody_uebermuetig = \relative c'' {
  <ais cis,>2 <b d,>4~ |
  <b d,> <g b e>2 |
  <fis c' e>2 <d fis>4~ |
  <d fis> <fis c'>2 |
  
  <fis b>2 <fis c'>4~ |
  <fis c'> <c' fis>2 |
  <b fis'> <g b>4~ |
  <g b> <b g'>2 |
  <c g'> <a e>4~ |
  <a e> <c fis>2 |
  <b fis'> <g d>4~ |
  <g d> <g e'>2 |
  <fis e'> <fis a>4~ |
  <fis a> \acciaccatura b8 a( gis a ais) |
  
  <b g d>2.~ |
  <b g d>4 <b d b'>2 |
  <ais cis ais'> <b d b'>4~ |
  <b d b'> <e g b e>2 |
  <e fis c' e> <fis c>4~ |
  <fis c> <c fis c'>2 |
  <b fis' b> <c fis c'>4~ |
  <c fis c'> <fis c' fis>2 |
  <fis b fis'> <b g b,>4~ |
  <b g b,> <g b g'>2 |
  
  <g c g'>2 <a e a,>4~ |
  <a e a,> <fis c' fis>2 |
  <fis b fis'> <g b, g>4~ |
  <g b, g> <e g e'>2
  <e fis e'> <fis d fis,>4~ |
  <fis d fis,> <c e c'>4. <b d b'>8 |
  <g b d g>2.~ |
  <g b d g>4
}

melody = \relative c'' {
  \global_presto
  \mark "Intro"
  b'8\mark "Presto" a |
  g\trill fis e d c b |
  a\trill g fis e d c |
  \repeat unfold 2 { b8 c4 b8 c4 | }
  b4 r8 <b dis fis b>8 <b dis fis b>4~ |
  <b dis fis b>2. |
  
  \global_andante
  r8\mark "Andante" r2 r8 <b' b'>4 <b b'>8 |
  <b b'>4.~ <b b'>8 <g g'> <e e'> <fis fis'> <a a'> <c c'> |
  <b b'>2. <g' g'>4( <fis fis'>8) |
  <e e'> <d d'> <c c'> <b b'> <a a'> <g g'> <fis fis'> <g g'> <a a'> |
  <b b'>2. <b b'>4 <b b'>8 |
  <b b'>( <dis, dis'> <fis fis'>) <c' c'>( <b b'> <ais ais'>) <b b'>( <fis fis'>8. <b b'>16) |
  <a a'>4.( <g g'>) <g g'> |
  <fis fis'>8 <e e'> <dis dis'> <e e'> <fis fis'> <g g'> <a a'> <b b'> <c c'> |
  <b b'>2. <b b'>4 <b b'>8 |
  <b b'>4.~ <b b'>8 <g g'> <e e'> <fis fis'> <a a'> <c c'> |
  <b b'>2. <g' g'>4( <fis fis'>8) |
  <e e'> <d d'> <c c'> <b b'> <a a'> <g g'> <fis fis'> <g g'> <a a'> |
  <b b'>2. <b b'>4 <b b'>8 |
  <b b'>8 <a a'> <gis gis'> <a a'> <b b'> <c c'> <cis cis'> <d d'> <dis dis'> |
  <e e'>4.( <d d'>8) <e e'>16( <d d'> <cis cis'> <d d'>) <fis fis'>4\fermata( <e e'>8) |
  <e e'>8( <d d'> <b b'> <g g'> <e e'> <c' c'>) <b b'>4\fermata( <a a'>8) |
  <g g'>8 \repeat unfold 8 { <g b d g> } |
  \repeat unfold 3 { \repeat unfold 9 { <g b d g> } | }
  <g b d g>2. r4. |
  
  \global_tempo_di_valse
  R2.\mark "Tempo di Valse" |
  R2. |
  c'8( b a g fis e |
  dis c b2) |
  R2.*2
  
  <<
    { r4 \acciaccatura c'8 b( ais b c) }
  \\
    { <b, dis fis b>2 <b e g b>4 }
  >>
  \global_andante_tempo <b dis fis b>2.\fermata |
  
  \global_one
  r4 b' e |
  \repeat volta 2 {
    \melody_one_a_tempo
  }
  \alternative {
    { r4 b e | }
    { r4. r16 g,,32( a b c d e f g a b) | }
  }
  
  \global_one_two
  \repeat volta 2 {
    c4 b8 a g4 |
    \tuplet 3/2 { a8( b a) } g4 e |
    d\trill c8 b a4~ |
    a g8 a b g |
    c4 c8 d e4~ |
    e8 dis e4 a |
    g \tuplet 3/2 { f8( g f } \tuplet 3/2 { e f e } |
    d4) r8. g,32( a b c d e f g a b |
    c4) b8 a g4 |
    \tuplet 3/2 { a8 b a } g4 e |
    d\trill c8 b a4~ |
    a g8 a b g |
    c4 c8 d e c |
    d4 d8 g g, d' |
    c4 \acciaccatura d8 c b c d |
  }
  \alternative {
    { c4. r16 g32( a b c d e f g a b) }
    { \global_one_two_fermata c,4\fermata \global_one_two_tempo b' e }
  }
  
  \global_one
  \melody_one_a_tempo
  
  R2.
  \global_two
  \relative c'' {
    e4( d8 e fis g) |
    \tuplet 3/2 { a d a } d,2 |
    <g e'>8 <g e'> <g e'> r <g es'> r |
    <fis d'> r <b, d,>2\mark "Übermütig" |
    
    \bar "||"
    \global_two_uebermuetig
    \melody_uebermuetig
    fis'8 g gis a |
    
    \bar "||"
    \global_two_stuermisch
    b4\mark "Stürmisch" \tuplet 3/2 { a8 b a } g r |
    \melody_one_stuermisch
    a4 \repeat unfold 4 { <a e cis>8 } |
    
    <a e cis>4 fis8 g gis a |
    b4 \tuplet 3/2 { a8 b a } g r |
    \melody_one_stuermisch
    d'4 \repeat unfold 4 { <d a fis>8 } |
    <d a fis>4 <b, d,>2 |
    \bar "||"
    \global_two_uebermuetig
    \melody_uebermuetig
    r2 |
    \bar "||"
    
    \global_three_intro
    <d a d,>4. <d a d,>8 <d a d,>4 |
    <dis a dis,>2. |
    <e b gis e>4 e8 gis b e |
    e,4 e2 |
    
    \repeat volta 2 {
      e2.\mark "(Cantilene) Liebeslied" |
      fis2( cis4) |
      cis2.( |
      b) |
      a4 b8( a gis a) |
      a4( gis fis) |
      fis2. |
      e2( eis4) |
      fis'2. |
      g4( fis cis) |
      e2. |
      d2( cis4) |
      cis( b ais) |
      b( cis4. d8) |
      dis2.( |
      e4) e e |
      e2. |
      fis2( cis4) |
      cis2. |
      b |
      a4 b8( a gis a) |
      a4( gis fis) |
      fis2. |
      e2( eis4) |
      fis' g8( fis eis fis) |
      <g g'>4( <fis fis'> <cis cis'>) |
      <e e'>4.( <d d'>8 <cis cis'>4) |
      <b b'>( <a a'> <fis fis'>) |
      <fis fis'>( <e e'> cis') |
      <<
        { cis2( b4) }
        \\
        { e,4( dis d) }
      >>
    }
    \alternative {
      {
        <cis a'>2.~ |
        <cis a'>4 e'4 e |
      }
      {
        <cis, a'>2.~ |
        <cis a'>4 \acciaccatura b'8 a gis a d |
      }
    }
  }
}

second_melody = \relative c'' {
  \global_presto
}

left_one_a_tempo = {
  r4 <e g b> <e g b> |
  r <e a c> <e a c> |
  \repeat unfold 3 { r <e g b> <e g b> }
  <e a c e>2. |
  r4 <g b e> <g b e> |
  <g b e> r2 |
  r4 <a b fis'> <a b fis'> |
  r <fis a b dis> <fis a b dis> |
  r <g b e> <g b e> |
  <c, e a>2. |
  r4 <e g b> <e g b> |
  r <dis fis b> <dis fis b> |
  <e g b> <b dis fis b> <e g b> |
}

left_stuermisch = {
  <a, cis g'>2. |
  r4 <fis' a d> <fis a d> |
  r <a d> <a d> |
  r <g a cis> <g a cis> |
  r <g a cis> <g a cis> |
  r <fis a d> <fis a d> |
  r <fis a d> <fis a d> |
  <e g a cis>2. |
  <a, cis g'> |
  r4 <fis' a d> <fis a d> |
  r <fis a d> <fis a d> |
  r <a cis> <a cis> |
  r <gis b d> <gis b d> |
}

left_uebermuetig = {
  \repeat unfold 2 { r4 <d g b> <d g b> | }
  \repeat unfold 4 { r <d fis c'> <d fis c'> | }
  r4 <d g b> <d g b> |
  r4 <d g> <d g> |
  \repeat unfold 2 { r <e a c> <e a c> | }
  \repeat unfold 2 { r <g b> <g b> | }
  \repeat unfold 2 { r <d fis c'> <d fis c'> | }
  
  \repeat unfold 4 { r <d g b> <d g b> | }
  \repeat unfold 4 { r <d fis c'> <d fis c'> | }
  r <d g b> <d g b> |
  r <d g> <d g> |
  
  \repeat unfold 2 { r <e a c> <e a c> | }
  \repeat unfold 2 { r <g b> <g b> | }
  \repeat unfold 2 { r <d fis c'> <d fis c'> | }
  <g b> b, d |
  g, r2 |
}

left = \relative c' {
  \global_presto
  
  b8 a |
  g\trill fis e d c b |
  a'\trill g fis e d c |
  \repeat unfold 2 { b8 c4 b8 c4 | }
  b4 r8 b8 b4~ |
  b2. |
  
  \global_andante
  r8 <e g b>16 <e g b> \repeat unfold 7 { <e g b>8 } |
  r8 <e g b>16 <e g b> \repeat unfold 4 { <e g b>8 } \repeat unfold 3 { <e a c> } |
  r8 <e g b>16 <e g b> \repeat unfold 7 { <e g b>8 } |
  r8 <e a c>16 <e a c> \repeat unfold 7 { <e a c>8 } |
  r8 <e g b>16 <e g b> \repeat unfold 7 { <e g b>8 } |
  r8 <dis fis b>16 <dis fis b> \repeat unfold 7 { <dis fis b>8 } |
  r8 <e g b>16 <e g b> \repeat unfold 7 { <e g b>8 } |
  r8 <c e a>16 <c e a> \repeat unfold 4 { <c e a>8 } \repeat unfold 3 { <c e fis> } |
  <b dis fis>8 <ais ais'> <a a'> <g g'> <fis fis'> <e e'> <dis dis'> <c c'> <b b'> |
  
  r8 <e' g b>16 <e g b> \repeat unfold 4 { <e g b>8 } \repeat unfold 3 { <e a c> } |
  r8 <e g b>16 <e g b> \repeat unfold 7 { <e g b>8 } |
  r8 <e a c>16 <e a c> \repeat unfold 7 { <e a c>8 } |
  r8 <e g b>16 <e g b> \repeat unfold 7 { <e g b>8 } |
  r8 <d fis c'>16 <d fis c'> \repeat unfold 7 { <d fis c'>8 } |
  r8 <d g b>16 <d g b> \repeat unfold 4 { <d g b>8 } \global_andante_fermata <cis e g bes>\fermata \global_andante_tempo <cis e g bes>  <cis e g bes> |
  r8 <d g b>16 <d g b> \repeat unfold 4 { <d g b>8 } \global_andante_fermata <d fis c'>\fermata \global_andante_tempo <d fis c'> <d fis c'> |
  <g g,>2. <g g,>8 <fis fis,> <g g,> |
  <fis fis,>4.( <e e,>) <fis fis,>8 <e e,> <fis fis,> |
  <e e,>4.( <d d,>) <e e,>8 <d d,> <b b,> |
  <a' a,>4. <g g,> <d d,> |
  <g g,>2. r4. |
  
  \global_tempo_di_valse
  <b b,>4 <c c,> <b b,> |
  <c c,> <b b,>2 |
  \repeat unfold 3 { <b, dis fis a>4 } |
  <b dis fis a> <b dis fis a>2 |
  <b' b,>4 <c c,> <b b,> |
  <c c,> <b b,>2 |
  <b, dis fis b> <b e g b>4 |
  <b dis fis b>2.\fermata |
  
  \global_one
  R2. |
  \repeat volta 2 {
    \left_one_a_tempo
  }
  \alternative {
    { R2. }
    { R2. }
  }
  
  \global_one_two
  \repeat volta 2 {
    \repeat unfold 3 {
      \repeat unfold 2 { r4 <g c e> <g c e> | }
      \repeat unfold 2 { r4 <g b f'> <g b f'> | }
    }
    r4 <g c e> <g c e> |
    r4 <g b f'> <g b f'> |
    r4 <g c e> <g c e> |
  }
  \alternative {
    { <g c e>4 r2 | }
    { <g c e>4\fermata r2 | }
  }
  
  \global_one
  \left_one_a_tempo
  
  R2.
  \global_two
  \relative c {
    <d fis c'>2.~ |
    <d fis c'> |
    
    % Move this to second melody!
    <d g c>8 <d g c> <d g c> r <d g c> r |
    <d a' c> r r2 |
    
    \global_two_uebermuetig
    \left_uebermuetig
    
    \global_two_stuermisch
    <e' g a cis>2. |
    \left_stuermisch
    <a cis>4 <e e'> <cis cis'> |
    <a a'> r2 |
    <e' g a cis>2. |
    \left_stuermisch
    <d fis>4 <a a'> <fis fis'>
    <d d'> r2 |
    \global_two_uebermuetig
  }
  \relative c {
    \left_uebermuetig
  }
  
  \global_three_intro
  <f f,>2. |
  <f f,>4. <f f,>8 <f f,>4 |
  <e e,>2. |
  <e e,>4 r2 |
  
  \repeat volta 2 {
    \repeat unfold 2 { r4 <e a cis> <e a cis> | }
    \repeat unfold 2 { r <e gis d'> <e gis d'> | }
    r <e a cis> <e a cis>
    r <e a> <e a> |
    r <e gis d'> <e gis d'> |
    r <e gis d'> <gis b d> |
    r <fis cis' e> <fis cis' e> |
    r <fis ais e'> <fis ais e'> |
    \repeat unfold 2 { r <fis b d> <fis b d> | }
    r <gis d'> <gis d'> |
    r <e gis d'> <e gis d'> |
    r <fis a c> <fis a c> |
    \repeat unfold 3 { r <e a cis> <e a cis> | }
    \repeat unfold 2 { r <e gis d'> <e gis d'> | }
    r <e a cis> <e a cis> |
    r <e a> <e a> |
    r <e gis d'> <e gis d'> |
    r <e gis d'> <gis a d> |
    r <fis cis' e> <fis cis' e> |
    r <fis ais e'> <fis ais e'> |
    r <fis b d> <fis b d> |
    <dis fis a c>2.( |
    <e a cis>4) <a cis> <a cis> |
    e fis gis |
  }
  \alternative {
    {
      a4 e' cis |
      a r2 |
    }
    {
      a4 e' cis |
      a r2 |
    }
  }
}

pedal_one_a_tempo = {
  \repeat unfold 5 { e2 r4 | }
  e2. |
  e2 r4 |
  e4 r2 |
  dis2 r4 |
  b2 r4 |
  e2 r4 |
  a,2 r4 |
  \repeat unfold 2 { b2 r4 | }
  e4 b e |
}

pedal_uebermuetig = {
  g,4 r2 |
  d4 r2 |
  a'4 r2 |
  d,4 r2 |
  
  a'4 r2 |
  d,4 r2 |
  g4 r2 |
  b4 r2 |
  \repeat unfold 2 { c4 r2 | }
  \repeat unfold 2 { d4 r2 | }
  a4 r2 |
  d,4 r2 |
  
  \repeat unfold 2 {
    g4 r2 |
    d4 r2 |
  }
  \repeat unfold 2 {
    a'4 r2 |
    d,4 r2 |
  }
  g4 r2 |
  b4 r2 |
  \repeat unfold 2 { c4 r2 | }
  \repeat unfold 2 { d4 r2 | }
  a4 r2 |
  d,4 r2 |
  \repeat unfold 2 { g4 r2 | }
}

pedal_stuermisch = \relative c {
  e2.( |
  a,) |
  d4. r |
  fis r |
  e r |
  a, r |
  d r |
  d r |
  e2.( |
  a,) |
  d4. r |
  d r |
  e r |
  e r |
}

pedal = \relative c {
  \global_presto
  r4 |
  R2.*6 |
  
  \global_andante
  e2 r4 b4. |
  e2 r4 c4. |
  e2 r4 b4. |
  a2 r4 a4. |
  e'2 r4 e4. |
  b2 r4 b4. |
  e2 r4 b4. |
  c2 r4 c4. |
  b2 r4 b4. |
  
  e2 r4 c4. |
  e2 r4 b4. |
  a2 r4 a4. |
  e'2 r4 e4. |
  d2 r4 d4. |
  g2 r4 cis,4.\fermata |
  d2 r4 d4.\fermata |
  g2. g8 fis g |
  fis4.( e) fis8 e fis |
  e4.( d) e8 d b |
  a4. g d |
  g2. r4. |
  
  \global_tempo_di_valse
  b4 c b |
  c b2 |
  b4 b b |
  b b2 |
  b4 c b |
  c b2 |
  b e4 |
  b2.\fermata |
  
  \global_one
  R2. |
  \repeat volta 2 {
    \pedal_one_a_tempo
  }
  \alternative {
    { R2. }
    { R2. }
  }
  
  \global_one_two
  \repeat volta 2 {
    \repeat unfold 3 {
      c2 r4 |
      g2 r4 |
    }
    d'2 r4 |
    g2 r4 |
    \repeat unfold 2 {
      c,2 r4 |
      g2 r4 |
    }
    c2 r4 |
    g2 r4 |
    c2 r4 |
  }
  \alternative {
    { c4 r2 | }
    { c4\fermata r2 | }
  }
  
  \global_one
  \pedal_one_a_tempo
  R2.
  
  \global_two
  \relative c {
    d2.~ |
    d |
    d4. r8 d r |
    d4 r2 |
    
    \global_two_uebermuetig
    \pedal_uebermuetig
    
    \pedal_stuermisch
    a'4 e cis |
    a r2 |
    \pedal_stuermisch
    d4 a fis |
    d r2 |
  }
  \pedal_uebermuetig
  
  \global_three_intro
  f2. |
  f |
  e |
  e4 r2 |
  
  \repeat volta 2 {
    a4 r2 |
    e4 r2 |
    gis4 r2 |
    e4 r2 |
    a4 r2 |
    cis4 r2 |
    b4 r2 |
    e,4 r2 |
    ais4 r2 |
    fis4 r2 |
    b4 r2 |
    b4 r2 |
    e4 r2 |
    e,4 r2 |
    a4 r2 |
    a4 r2 |
    a2.( |
    e |
    gis |
    e |
    a |
    cis |
    b |
    e, |
    ais |
    fis |
    b) |
    dis2.( |
    e4) r2 |
    e,2. |
  }
  \alternative {
    {
      a4 e' cis |
      a r2 |
    }
    {
      a4 e' cis |
      a r2 |
    }
  }
}

glockenspiel = \relative c'' {
  \global_presto
}

drum = \drummode {
  
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
    \tempo 4=140
  }
}
