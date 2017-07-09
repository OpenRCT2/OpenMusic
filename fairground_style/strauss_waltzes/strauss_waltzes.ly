\version "2.18.2"
\include "articulate.ly"
#(define ac:normalFactor '(7 . 8))

\header {
  dedication = "OpenRCT2-OpenMusic"
  title = "Various Waltzes by Johann Strauß II"
  arranger = "Christian Friedrich Coors"
  subtitle = "Morgenblätter, Die Fledermaus, Rosen aus dem Süden, Wiener Blut, Donauwalzer"
  composer = "Johann Baptist Strauss"
  tagline = "https://www.github.com/ccoors/OpenRCT2-OpenMusic"
  copyright = "Arrangement CC-BY-SA 4.0 https://creativecommons.org/licenses/by-sa/4.0/"
}

\paper {
  #(set-paper-size "a4")
  left-margin = 2\cm
}

transposeMorgenblaetter = #(define-music-function (parser location music)
   (ly:music?)
   #{
     \transpose d c {
       #music
     }
   #})

transposeFledermaus = #(define-music-function (parser location music)
   (ly:music?)
   #{
     \transpose c es { % c es
       #music
     }
   #})

transposeKuenstlerleben = #(define-music-function (parser location music)
   (ly:music?)
   #{
     \transpose c c { % c es
       #music
     }
   #})

\include "morgenblaetter.ily"
\include "fledermaus.ily"
\include "kuenstlerleben.ily"


second_melody = \relative c'' {
  \transposeMorgenblaetter {
    \second_melody_morgenblaetter
  }
  \transposeFledermaus {
    \second_melody_fledermaus
  }
  \transposeKuenstlerleben {
    \second_melody_kuenstlerleben
  }
}

melody = \relative c'' {
  \transposeMorgenblaetter {
    \melody_morgenblaetter
  }
  \transposeFledermaus {
    \melody_fledermaus
  }
  \transposeKuenstlerleben {
    \melody_kuenstlerleben
  }
  
}

left = \relative c' {
  \transposeMorgenblaetter {
    \left_morgenblaetter
  }
  \transposeFledermaus {
    \left_fledermaus
  }
}

pedal = \relative c, {
  \transposeMorgenblaetter {
    \pedal_morgenblaetter
  }
  \transposeFledermaus {
    \pedal_fledermaus
  }
}

glockenspiel = \relative c'' {

}

drum = \drummode {

}

organPart = <<
  \new PianoStaff \with {
    instrumentName = "Organ"
    shortInstrumentName = "Org."
  } <<
    \new Staff = "second melody" \with {
      midiInstrument = "drawbar organ"
    } \second_melody
    \new Staff = "melody" \with {
      midiInstrument = "church organ"
    } \melody
    \new Staff = "accompaniment" \with {
      midiInstrument = "reed organ"
    } { \clef bass \left }
  >>
  \new Staff = "pedal" \with {
    midiInstrument = "church organ"
  } { \clef bass \pedal }
>>

glockenspielPart = \new Staff \with {
  instrumentName = "Glockenspiel"
  shortInstrumentName = "Gls."
  midiInstrument = "vibraphone"
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
    \tempo 4=200
  }
}
