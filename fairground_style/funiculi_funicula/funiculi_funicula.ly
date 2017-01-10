\version "2.18.2"

% Based on http://imslp.org/wiki/File:PMLP111512-Denza_-_Funiculi_Funicula_VS_Sibley.1802.8869.pdf

\header {
  dedication = "OpenRCT2-OpenMusic"
  title = "Funiculì, Funiculà"
  arranger = "Christian Friedrich Coors"
  composer = "Luigi Denza"
  tagline = "https://www.github.com/ccoors/OpenRCT2-OpenMusic"
  copyright = "Arrangement CC-BY-SA 4.0 https://creativecommons.org/licenses/by-sa/4.0/"
}

\paper {
  #(set-paper-size "a4")
  left-margin = 1.5\cm
}

global = {
  \key es \major
  \numericTimeSignature
  \time 6/8
}

sop_one = \relative c'' {
  bes8\f
  es2.~
  es4 es8 d4 d8
  bes4 bes8 c4 c8
  g4. g~
  g4 g8 f4 es8
  es2.~
  es8 r g f4 es8
  
  es2.~
  es8 r r r4
}

soprano_strophe = {
  r8 r4 r4
  R2.*2
  
  r4 r8 r4
  \sop_one
  \sop_one
  
  g8
  g2.~
  g4 g8 a4 a8
  g4 g8 a4 a8
  g4. g4.~ g4
  d8 d4 d8
  d2.~
  d8 r d d4 d8
  d2.~
  d8 r r r4 bes'8
  bes2.~
  bes4 bes8 c4 c8
  bes4 bes8 c4 c8
  bes4. bes4.~
  bes4 f8 f4-> f8
  f2.~
  f8 r f8 f4 f8
  f2.~
  f8 r r r4 r8
  
  d'4.\( c8\) r r
  d4.\( c8\) r r
  es4 d8 c4 es8
  d4.~ d8 r r
  
  d4.\( c8\) r r
  d4.\( c8\) r r
  es4 d8 c4 es8
  bes r g8\pp g4\< g8
  g4 g8 g4 g8
  g4 g8 g4 g8
  g4 g8 g4 g8\ff
  es'2.
  f4-> es8 c4 es8
  bes8 r g8 g4 as8
  bes4 as8 g4 f8
  es8 r r r4 r8
  
  <d' bes>4.\( <c as>8\) r r
  <d bes>4.\( <c as>8\) r r
  <es c>4 <d bes>8 <c as>4 <es c>8
  <d bes>4.~ <d bes>8 r r
  
  <d bes>4.\( <c as>8\) r r
  <d bes>4.\( <c as>8\) r r
  <es c>4 <d bes>8 <c as>4 <es c>8
  <bes g>8 r g\p g4\< g8
  g4 g8 g4 g8
  g4 g8 g4 g8
  g4 g8 g4 g8\ff
  \once \hide Score.MetronomeMark\tempo 4=100
  <c es>2.\fermata
  \once \hide Score.MetronomeMark\tempo 4=190
  <f d>4 <es c>8 <c as>4 <es c>8
  <bes g> r <g es> <g es>4 <as f>8
  <bes g>4 <as f>8 <g es>4 <f d>8
  es
}

sopranoVoice = \relative c'' {
  \global
  \dynamicUp
  R2.*15 r8
  \soprano_strophe
  \soprano_strophe
}

right_strophe = {
  r8 <es bes g>\pp <es bes g> r <es bes g>
  <es bes g> r <es bes g> <es bes g> r <es bes g>
  <es bes g> r <es bes g> <es bes g> r <es bes g>
  <es bes g> r <es bes g> <es bes g> r <es bes g>
  <es bes g> r <es bes g> <es bes g> r <es bes g>
  <es bes g> r <es bes g> <es bes g> r <es bes g>
  <es bes g> r <es bes g> <es bes g> r <es bes g>
  <es bes g> r <es bes g> <es bes g> r <es bes g>
  <es bes g> r <es bes g> <d bes as> r <es bes g>
  <es bes g> r <es bes g> <es bes g> r <es bes g>
  <es bes g> r <g es bes> <f d as>4 <es bes g>8
  <g, bes> r <g bes> <g bes> r <bes g>
  <es bes g> r <es bes g> <es bes g> r <es bes g>
  <es bes g> r <es bes g> <es bes g> r <es bes g>
  <es bes g> r <es bes g> <es bes g> r <es bes g>
  <es bes g> r <es bes g> <es bes g> r <es bes g>
  <es bes g> r <es bes g> <es bes g> r <es bes g>
  <es bes g> r <es bes g> <d bes as> r <es bes g>
  <es bes g> r <es bes g> <es bes g> r <es bes g>
  <es bes g> r <g es bes> <f d as>4 <es bes g>8
  <g, bes> r <g bes> <g bes> r <bes g>
  <es bes g> r <es bes g> <es bes g> r <es bes g>
  
  <d bes g> r <d bes g> <d bes g> r <d bes g>
  <d bes g> r <d bes g> <d c fis,> r <d c fis,>
  <d bes g> r <d bes g> <d c fis,> r <d c fis,>
  <d bes g> r <d bes g> <d bes g> r <d bes g>
  <d bes g> r <d bes g> <d c fis,> r <d c fis,>
  <d bes g> r <d bes g> <d bes g> r <d bes g>
  <d bes g> r <d bes g> <d c fis,> r <d c fis,>
  <bes g> r <bes g> <bes g> r <bes g>
  <d bes g> r <d bes g> <d bes g> r <d bes g>
  
  <f d bes> r <f d bes> <f d bes> r <f d bes>
  <f d bes> r <f d bes> <f es a,> r <f es a,>
  <f d bes> r <f d bes> <f es a,> r <f es a,>
  <f d bes> r <f d bes> <f d bes> r <f d bes>
  <f d bes> r <f d bes> <f es a,> r <f es a,>
  <f d bes> r <f d bes> <f d bes> r <f d bes>
  <f d bes> r <f d bes> <f es a,> r <f es a,>
  <d bes> r <d bes> <d bes> r <d bes>
  <f d bes> r <f d bes> <f d bes> r <f d bes>
  
  <d' bes>4.\( <c as>8\) r r
  <d bes>4.\( <c as>8\) r r
  <es c> r <d bes> <c as> r <es c>
  <d bes>4.~ <d bes>8 r r
  
  <d bes>4.\( <c as>8\) r r
  <d bes>4.\( <c as>8\) r r
  <es c> r <d bes> <c as> r <es c>
  <bes g> r <g es>-. \pp <g es>-.\< r <g es>-.
  <g f>-. r <g f>-. <g f>-. r <g f>-.
  <g es>-. r <g es>-. <g es>-. r <g es>-.
  <g f d> r <g f d> <g f d> r <g f d>\ff
  <g es es'>2.->
  
  <f' d>8 r <es c> <c as> r <es c>
  <bes g> r <g es> <g es> r <as f>
  <bes g> r <as f> <g es> r <f bes,>
  <es bes g> r <es bes g> <es bes g> r <es bes g>
  
  <d' bes d,>4.->\( <c as c,>8\) r r
  <d bes d,>4.->\( <c as c,>8\) r r
  <es c es,>8 r <d bes d,> <c as c,> r <es c es,>
  <d bes d,>4.~ <d bes d,>8 r r
  
  <d bes d,>4.->\( <c as c,>8\) r r
  <d bes d,>4.->\( <c as c,>8\) r r
  <es c es,>8 r <d bes d,> <c as c,> r <es c es,>
  <bes g bes,> r <g es> \p <g es>\< r <g es>
  <g f> r <g f> <g f> r <g f>
  <g es> r <g es> <g es> r <g es>
  <g f d> r <g f d> <g f d> r <g f d>\ff
  <es' c es,>2.\fermata
  <f d f,>8 r <es c es,> <c as c,> r <es c es,>
  <bes g bes,> r <g es> <g es> r <as f>
  <bes g> r <as f> <g es> r <f bes,>
  <es bes g>
}

right = \relative c'' {
  \global
  <bes d>4.( <as c>8) r r
  <bes d>4.( <as c>8) r r
  <c es>8-. r <bes d>-. <as c>-. r <c es>8-.
  <bes d>4.~ <bes d>8 r r
  <bes d>4.( <as c>8) r r
  <bes d>4.( <as c>8) r r
  <c es>8-. r <bes d>-. <as c>-. r <c es>8-.
  <g bes>-. r <es g>-. <es g>-. r <es g>-.
  <f g> r <f g> <f g> r <f g>
  <es g> r <es g> <es g> r <es g>
  <d f g> r <d f g> <d f g> r <d f g>
  <es g es'>2.
  
  <d' f>8-. r <c es>-. <as c>-. r <c es>-.
  <g bes>-. r <es g>-. <es g>-. r <f as>-.
  <g bes> r <f as> <es g> r <bes f'>
  
  <es g,>
  \right_strophe
  \right_strophe
}

left_strophe = {
  r8 <bes es,>\pp <bes es,> r <bes es,>
  <bes es,>8 r <bes es,> <bes es,> r <bes es,>
  <bes es,>8 r <bes es,> <bes es,> r <bes es,>
  <bes es,>8 r <bes es,> <bes es,> r <bes es,>
  <bes es,>8 r <bes es,> <bes es,> r <bes es,>
  <bes es,>8 r <bes es,> <bes es,> r <bes es,>
  <bes es,>8 r <bes es,> <bes es,> r <bes es,>
  <bes es,>8 r <bes es,> <bes es,> r <bes es,>
  <bes es,>8 r <bes es,> <bes bes,> r <bes es,>
  <bes es,>8 r <bes es,> <bes es,> r <bes es,>
  <bes es,>8 r <bes es,> <bes bes,>4 <bes es,>8
  <bes es,>8 r <bes es,> <bes es,> r <bes es,>
  <bes es,>8 r <bes es,> <bes es,> r <bes es,>
  <bes es,>8 r <bes es,> <bes es,> r <bes es,>
  <bes es,>8 r <bes es,> <bes es,> r <bes es,>
  <bes es,>8 r <bes es,> <bes es,> r <bes es,>
  <bes es,>8 r <bes es,> <bes es,> r <bes es,>
  <bes es,>8 r <bes es,> <bes bes,> r <bes es,>
  <bes es,>8 r <bes es,> <bes es,> r <bes es,>
  <bes es,>8 r <bes es,> <bes bes,> r <bes es,>
  <bes es,>8 r <bes es,> <bes es,> r <bes es,>
  <bes es,>8 r <bes es,> <bes es,> r <bes es,>
  
  <d d,> r <d d,> <d d,> r <d d,>
  <d d,> r <d d,> <d d,> r <d d,>
  <d g,> r <d g,> <d d,> r <d d,>
  <d g,> r <d g,> <d g,> r <d g,>
  <d g,> r <d g,> <d d,> r <d d,>
  <d g,> r <d g,> <d g,> r <d g,>
  
  <d g,> r <d g,> <d d,> r <d d,>
  <d g,> r <d g,> <d g,> r <d g,>
  <d g,> r <d g,> <d g,> r <d g,>
  
  <f f,> r <f f,> <f f,> r <f f,>
  <f f,> r <f f,> <f f,> r <f f,>
  <f bes,> r <f bes,> <f f,> r <f f,>
  <f bes,> r <f bes,> <f bes,> r <f bes,>
  <f bes,> r <f bes,> <f f,> r <f f,>
  <f bes,> r <f bes,> <f bes,> r <f bes,>
  <f bes,> r <f bes,> <f f,> r <f f,>
  <f bes,> r <f bes,> <f bes,> r <f bes,>
  <f bes,> r <f bes,> <f bes,> r <f bes,>
  
  bes,8 r <as' bes> <as bes> r <as bes>
  f r <as bes> <as bes> r <as bes>
  bes,8 r <as' bes> <as bes> r <as bes>
  f r <as bes> <as bes> r <as bes>
  bes,8 r <as' bes> <as bes> r <as bes>
  f r <as bes> <as bes> r <as bes>
  bes,8 r <as' bes> <as bes> r <as bes>
  
  <es bes'> r <es bes'> \pp <es bes'>\< r <es bes'>
  <d b'> r <d b'> <d b'> r <d b'>
  <c c'> r <c c'> <c c'> r <c c'>
  <b b'> r <b b'> <b b'> r <b b'>\ff
  <c c'>2.
  
  <as as'>8-. r <as as'>8-. <as as'>8-. r <as as'>8-.
  <bes bes'>8-. r <bes bes'>8-. <bes bes'>8-. r <bes bes'>8-.
  <bes bes'>8-. r <bes, bes'>8-. <bes bes'>8-. r <bes bes'>8-.
  <bes' es,> r <bes es,> <bes es,> r <bes es,>
  
  <bes bes,> r <f' as bes> <f as bes> r <f as bes>
  <f f,> r <f as bes> <f as bes> r <f as bes>
  <bes, bes,> r <f' as bes> <f as bes> r <f as bes>
  <f f,> r <f as bes> <f as bes> r <f as bes>
  
  <bes, bes,> r <f' as bes> <f as bes> r <f as bes>
  <f f,> r <f as bes> <f as bes> r <f as bes>
  <bes, bes,> r <f' as bes> <f as bes> r <f as bes>
  <es es,> r <es bes'> \p <es bes'>\< r <es bes'>
  <d b'> r <d b'> <d b'> r <d b'>
  <c c'> r <c c'> <c c'> r <c c'>
  <b b'> r <b b'> <b b'> r <b b'>\ff
  <c c,>2.\fermata
  <as as,>8 r <as as,> <as as,> r <as as,>
  <bes bes,> r <bes bes'> <bes bes'> r <bes bes'>
  <bes bes'> r <bes bes,> <bes bes,> r <bes bes,>
  <es es,>
}

left = \relative c' {
  \global
  bes,8 r <as' bes> <as bes> r <as bes>
  f r <as bes> <as bes> r <as bes>
  bes,8 r <as' bes> <as bes> r <as bes>
  f r <as bes> <as bes> r <as bes>
  bes,8 r <as' bes> <as bes> r <as bes>
  f r <as bes> <as bes> r <as bes>
  bes,8 r <as' bes> <as bes> r <as bes>
  
  <es bes'> r <es bes'> <es bes'> r <es bes'>
  <d b'> r <d b'> <d b'> r <d b'>
  <c c'> r <c c'> <c c'> r <c c'>
  <b b'> r <b b'> <b b'> r <b b'>
  <c c'>2.
  
  <as as'>8-. r <as as'>8-. <as as'>8-. r <as as'>8-.
  <bes bes'>8-. r <bes bes'>8-. <bes bes'>8-. r <bes bes'>8-.
  <bes bes'>8-. r <bes, bes'>8-. <bes bes'>8-. r <bes bes'>8-.
  
  <bes' es,>
  \left_strophe
  \left_strophe
}

pedal_strophe = {
  es,2~ \p es8~
  es2.~
  es~
  es
  R2.*47
  c2.
  R2.*11
  r4 es'2\p\<
  d2.
  c
  b\ff
  <c c,>2.\fermata
  as
  bes
  bes,
  es'8
}

pedal = \relative c {
  \global
  R2.*11
  r4. \relative c, {c\ff}
  R2.*3
  r8
  \pedal_strophe
  \pedal_strophe
}

drum_part_one_p = \drummode {
  sn8\p r sn sn r sn
  \repeat tremolo 12 sn16
  
  sn8 r sn sn r sn
  sn r sn sn r sn
  sn r sn sn r sn
  sn r sn sn sn sn
  
  <bd sn cymca>4 r2
  sn8 r sn sn r sn
  <bd sn cymca>4 r2
}

drum_part_one = \drummode {
  sn8 r sn sn r sn
  \repeat tremolo 12 sn16
  
  sn8 r sn sn r sn
  sn r sn sn r sn
  sn r sn sn r sn
  sn r sn sn sn sn
  
  <bd sn cymca>4 r2
  sn8 r sn sn r sn
  <bd sn cymca>4 r2
}

drum_part_two = \drummode {
  \repeat tremolo 12 sn16
  sn8 sn sn r4 r8
  R2.*3
  r4 sn8 sn sn sn
  sn4 r2
  r4 sn8 sn sn sn
  sn4 r2
}

drum_part_three = \drummode {
  \repeat tremolo 12 sn16\p
  \repeat tremolo 12 sn16
  tamb8 r tamb tamb r tamb
  tamb8 r tamb tamb r tamb
  \repeat tremolo 12 sn16
  \repeat tremolo 12 sn16
  tamb8 r tamb tamb r tamb\<
  \repeat tremolo 12 sn16
  \repeat tremolo 12 sn16
  \repeat tremolo 12 sn16
  \repeat tremolo 12 sn16
  \repeat tremolo 6 sn16\fermata <bd sn cymca>4.\f
  tamb4\p\< tamb4 tamb4
  tamb4 tamb4 tamb4
  tamb4. tamb4.
  <bd sn cymca>8\f
}

drum_strophe = \drummode {
  r8 r4 r4
  R2.*2
  \drum_part_one_p
  \drum_part_one
  R2.
  \drum_part_two
  \drum_part_two
  
  \drum_part_three r4 tamb4.
  \drum_part_three
}

drum = \drummode {
  \global
  % Drums follow here.
  tamb8\pp r tamb tamb r tamb
  tamb8 r tamb tamb r tamb
  tamb8 r tamb tamb r tamb
  tamb8 r tamb tamb tamb tamb
  
  tamb8 r tamb tamb r tamb
  tamb8 r tamb tamb r tamb
  tamb8 r tamb tamb r tamb\<
  \repeat tremolo 12 sn16
  \repeat tremolo 12 sn16
  \repeat tremolo 12 sn16
  \repeat tremolo 12 sn16
  \repeat tremolo 6 sn16 <bd sn cymca>4.\f
  <tamb bd>8\pp r tamb <tamb bd> r tamb
  <tamb bd> r tamb <tamb bd> tamb tamb
  <tamb bd> r tamb <tamb bd> r tamb
  tamb
  \drum_strophe
  \drum_strophe
}

tubular_strophe = {
  r8 r4 r4
  R2.*46
  es,8\p\< es es es es es
  f8 f f f f f
  g g g g g g
  <b b,> <b b,> <b b,> <b b,> <b b,> <b b,>
  <c c,>4.->\ff <c c,>->
  R2.*11
  es,8\p\< es es es es es
  f8 f f f f f
  g g g g g g
  <b b,> <b b,> <b b,> <b b,> <b b,> <b b,>
  <c c,>4.->\ff\fermata <c c,>->
  R2.*3
  es,8\ff
}

tubular = \relative c'' {
  \global
  d4.\ff c8 r r
  d4. c8 r r
  R2.*2
  d4. c8 r r
  d4. c8 r r
  R2.
  es2.\p\<
  f
  g
  <b b,>
  <c c,>->\ff
  R2.*3
  r8
  \tubular_strophe
  \tubular_strophe
}

glockenspiel_strophe = \relative c' {
  r8 r4 r4
  R2.*9
  r4 g'8\f f4 es8
  es2.~
  es8 r r r4.
  R2.*6
  r4 g8 f4 es8
  es2.~
  es8 r r r4.
  g8 r g g r g
  g r g a r a
  g r g a r a
  g r g g r g
  g r d d r d
  d r d d r d
  d r d\ff d r d
  d2. ~
  d8 r r r4 f'8
  d16 bes f' d bes f' d bes f' d bes f'
  d16 bes f' d bes f' es g, f' es g, f'
  d16 bes f' d bes f' es g, f' es g, f'
  d16 bes f' d bes f' d bes f' d bes f'
  d16 bes f' d bes f' es g, f' es g, f'
  d16 bes f' d bes f' d bes f' d bes f'
  d16 bes f' d bes f' es g, f' es g, f'
  d16 bes f' d bes f' d bes f' d bes f'
  d16 bes f' d bes f' d bes f' d bes f'
  
  bes,4. as8 r r
  bes4. as8 r r
  c r bes as r c
  bes4. ~ bes8 r r
  bes,4. as8 r r
  bes4. as8 r r
  c r bes as r c
  
  g'8 g g g g g
  g g g g g g
  g g g g g g
  g g g g g g
  g2.
  
  as8\p r as as r as
  bes r bes bes r bes
  bes r bes, bes r bes
  bes r bes bes r bes
  bes r r2
  R2.*6
  
  <g' es>8\p\< <g es>16 <g es>16 \repeat tremolo 8 <g es>16
  \repeat tremolo 12 <g f>16
  \repeat tremolo 12 <g es>16
  \repeat tremolo 12 <g f d>16
  <es' c es,>2.\ff\fermata
  
  as8\f r as as r as
  bes r bes bes r bes
  bes r bes, bes r bes
  <bes es g>
}

glockenspiel = \relative c'' {
  \global
  R2.*3
  r4. <d d'>4.\f
  R2.*3
  g8 g g g g g
  g g g g g g
  g g g g g g
  g g g g g g
  g2.
  d8 r c as r c
  g r es es r f
  g r f es r bes
  g'
  \glockenspiel_strophe
  \glockenspiel_strophe
}


sopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  shortInstrumentName = "S."
  midiInstrument = "choir aahs"
} { \sopranoVoice }

organPart = <<
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

drumsPart = \new DrumStaff \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Drums"
  shortInstrumentName = "Dr."
} \drum

glockenspielPart = \new Staff \with {
  instrumentName = "Glockenspiel"
  shortInstrumentName = "Gls."
  midiInstrument = "vibraphone"
} \glockenspiel

tubularPart = \new PianoStaff \with {
  instrumentName = "Tubular Bells"
  shortInstrumentName = "Tub."
} <<
  \new Staff = "manual" \with {
    midiInstrument = "tubular bells"
    midiMinimumVolume = #0.7
    midiMaximumVolume = #0.99
  } \tubular
>>

\score {
  <<
    \sopranoVoicePart
    \organPart
    \drumsPart
    \glockenspielPart
    \tubularPart
  >>
  \layout { }
}

\score {
  \unfoldRepeats
    <<
    \sopranoVoicePart
    \organPart
    \drumsPart
    \glockenspielPart
    \tubularPart
    >>
  \midi {
    \tempo 4=190
  }
}
