\version "2.18.2"
\include "../../include/include.ly"

\header {
  dedication = "OpenRCT2/OpenMusic"
  title = "Various Waltzes by Johann Strauß II"
  arranger = "Christian Friedrich Coors"
  subtitle = "Morgenblätter, Die Fledermaus, Künstlerleben, Wiener Blut, Donauwalzer"
  composer = "Johann Baptist Strauss"
  tagline = "https://www.github.com/OpenRCT2/OpenMusic"
  copyright = "Arrangement CC-BY-SA 4.0 https://creativecommons.org/licenses/by-sa/4.0/"
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

transposeWienerBlut = #(define-music-function (parser location music)
   (ly:music?)
   #{
     \transpose c c { % c es
       #music
     }
   #})

\include "morgenblaetter.ly"
\include "fledermaus.ly"
\include "kuenstlerleben.ly"
\include "wiener_blut.ly"


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
  \transposeWienerBlut {
    \second_melody_wiener_blut
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
  \transposeWienerBlut {
    \melody_wiener_blut
  }
}

left = \relative c' {
  \transposeMorgenblaetter {
    \left_morgenblaetter
  }
  \transposeFledermaus {
    \left_fledermaus
  }
  \transposeKuenstlerleben {
    \left_kuenstlerleben
  }
  \transposeWienerBlut {
    \left_wiener_blue
  }
}

pedal = \relative c, {
  \transposeMorgenblaetter {
    \pedal_morgenblaetter
  }
  \transposeFledermaus {
    \pedal_fledermaus
  }
  \transposeKuenstlerleben {
    \pedal_kuenstlerleben
  }
  \transposeWienerBlut {
    \pedal_wiener_blut
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
    \tempo 4=200
  }
}
