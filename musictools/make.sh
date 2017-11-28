#!/usr/bin/env bash

get_script_dir() {
     SOURCE="${BASH_SOURCE[0]}"
     # While $SOURCE is a symlink, resolve it
     while [ -h "$SOURCE" ]; do
          DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
          SOURCE="$( readlink "$SOURCE" )"
          # If $SOURCE was a relative symlink (so no "/" as prefix, need to resolve it relative to the symlink base directory
          [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
     done
     DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
     echo "$DIR"
}

cd "$(get_script_dir)"
echo "This is user $USER on $(uname -a)"
rm -rf out/
cd musictools/midisplit
rm -rf build
mkdir build
cd build
cmake ..
make
cd ../../..
set -e
mkdir out

cd fairground_style

for f in *; do
  if [ -d "$f" ]; then
    cd $f
    if [ -f "$f.ly" ]; then
      lilypond -dno-point-and-click -ddelete-intermediate-files $include --pdf $filename "$f.ly"
      if [ -f "$f.midi" ]; then
        ../../musictools/make_organ_song.sh "$f.midi"
        mv out.flac "../../out/$f.flac"
        mv "$f.pdf" "../../out/$f.pdf"
        echo $f >> ../../out/songlist.txt
      fi
    fi
    cd ..
  fi
done
cd ..

cp musictools/genoutput.sh out/genoutput.sh
cd out
./genoutput.sh
cd ..
rm out/genoutput.sh
