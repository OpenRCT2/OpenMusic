% Do not modify this file if you plan to render the resulting MIDIs with the scripts.

melodyInstrument = "church organ"
secondMelodyInstrument = "drawbar organ"
accompanimentInstrument = "reed organ"
pedalInstrument = "church organ"
glockenspielInstrument = "vibraphone"

\include "articulate.ly"
#(define ac:normalFactor '(7 . 8))

\paper {
  #(set-paper-size "a4")
  left-margin = 2\cm
}
