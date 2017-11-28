#!/usr/bin/env bash

get_script_dir() {
     SOURCE="${BASH_SOURCE[0]}"
     while [ -h "$SOURCE" ]; do
          DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
          SOURCE="$( readlink "$SOURCE" )"
          [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
     done
     DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
     echo "$DIR"
}

set -e
$(get_script_dir)/midisplit/build/midisplit -k 19 -k 16 -k 20 -v -o out_organ.mid $1
$(get_script_dir)/midisplit/build/midisplit  -k 11 -p -m 48 -v -o out_acc.mid $1
fluidsynth -nli -r 48000 -o synth.cpu-cores=8 -T wav -F out_organ.wav -g 1.0 $(get_script_dir)/../soundfonts/BureaFuneralChapel.sf2 out_organ.mid
fluidsynth -nli -r 48000 -o synth.cpu-cores=8 -T wav -F out_acc.wav -g 1.0 $(get_script_dir)/../soundfonts/GeneralUser\ GS\ v1.471.sf2 out_acc.mid
echo "Combining audio..."
sox --show-progress --combine mix out_acc.wav out_organ.wav out.flac
rm out_organ.mid out_acc.mid out_organ.wav out_acc.wav
