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
    \tempo 4=210
  }
}
