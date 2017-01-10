\version "2.18.2"

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
  e8 c g g' e4 d
  c g8 g g r e'4
  
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
      <c e c'>4 <c e c'>8 <c e c'> <c e c'>4 r
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
    { <e g b> <b, b'> <e e'>2 }
    { <e g b>4 r r2 }
  }

  \repeat volta 2 {
    <c c'>4 <g'' c e>8 <g c e> <g c e>4 r
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
}

pedal = \relative c {
  \global
  
}

\score {
  <<
    \new PianoStaff \with {
      instrumentName = "Organ"
      shortInstrumentName = "Org."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "church organ"
      } \right
      \new Staff = "left" \with {
        midiInstrument = "church organ"
      } { \clef bass \left }
    >>
    \new Staff = "pedal" \with {
      midiInstrument = "church organ"
    } { \clef bass \pedal }
  >>
  \layout { }
}

\score {
  \unfoldRepeats <<
    \new PianoStaff \with {
      instrumentName = "Organ"
      shortInstrumentName = "Org."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "church organ"
      } \right
      \new Staff = "left" \with {
        midiInstrument = "church organ"
      } { \clef bass \left }
    >>
    \new Staff = "pedal" \with {
      midiInstrument = "church organ"
    } { \clef bass \pedal }
  >>
  \midi {
    \tempo 4=220
  }
}
