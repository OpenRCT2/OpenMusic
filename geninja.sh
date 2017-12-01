#!/usr/bin/env bash

source musictools/config.sh

ADDEDSONGS=""

mkdir -p $RELEASEDIR
mkdir -p $SONGNAMEDIR/fairground_style
mkdir -p $SONGNAMEDIR/other_styles
mkdir -p $OUTDIR/midisplit

cat > build.ninja << _EOF_
builddir=$OUTDIR
OUTDIR=$OUTDIR
RELEASEDIR=$RELEASEDIR
SONGNAMEDIR=$SONGNAMEDIR
SOUNDFONTSDIR=$SOUNDFONTSDIR

GENOUTPUT_DIR=musictools/genoutput

SAMPLING_RATE=$SAMPLING_RATE
NORMALIZE_GAIN=$NORMALIZE_GAIN

SPLIT_PARAMS_ORGAN=-k 19 -k 16 -k 20
SPLIT_PARAMS_ACC=-k 11 -p -m 48

SOUNDFONT_ORGAN=$SOUNDFONTSDIR/$SOUNDFONT_ORGAN
SOUNDFONT_GENERALUSER=$SOUNDFONTSDIR/$SOUNDFONT_GENERALUSER
SOUNDFONT_NICEKEYS_UPRIGHT=$SOUNDFONTSDIR/$SOUNDFONT_NICEKEYS_UPRIGHT

DEFAULT_FLUIDSYNTH_GAIN=1.0

rule midi_pdf
  command = echo "\$in" && lilypond -dno-point-and-click -ddelete-intermediate-files \$\$include --pdf \$\$filename \$main_file && mv \$\$(basename -s .ly \$main_file).pdf \$OUTDIR/release && mv \$\$(basename -s .ly \$main_file).midi \$OUTDIR

rule cmake
  command = cmake -B\$\$(dirname \$out) -H\$in && cd \$\$(dirname \$out) && make

rule midisplit
  command = \$OUTDIR/midisplit/midisplit \$split_params -v -o \$out \$in

rule render
  command = fluidsynth -nli -r \$SAMPLING_RATE -R 0 -o synth.cpu-cores=2 -T wav -F \$out -g \$DEFAULT_FLUIDSYNTH_GAIN \$soundfont \$in

rule render_combine
  command = sox --show-progress --combine mix \$in \$out

rule convert
  command = sox --show-progress \$in \$out

rule normalize
  command = sox --show-progress \$in \$out gain -n \$NORMALIZE_GAIN

rule render_ogg
  command = oggenc --quality 7 --output=\$out \$in

rule write_song_name
  command = touch \$out

rule generate_index
  command = cd \$RELEASEDIR && cp ../../\$GENOUTPUT_DIR/style.css . && ../../\$GENOUTPUT_DIR/genoutput.sh

rule dependency_graph
  command = ninja -t graph | dot -Tpng -Gdpi=150 -o\$out

build \$OUTDIR/midisplit/midisplit: cmake musictools/midisplit || musictools/midisplit/main.c

build \$RELEASEDIR/depgraph.png: dependency_graph

_EOF_

for song in ${ORGAN_SONGS[*]}; do
  SONGFILES=""
  for file in fairground_style/${song}/*ly; do
    SONGFILES="${SONGFILES}$file "
  done
  cat >> build.ninja << _EOF_

build \$OUTDIR/${song}.midi \$RELEASEDIR/${song}.pdf: midi_pdf ${SONGFILES}
  main_file=fairground_style/${song}/${song}.ly
build \$OUTDIR/${song}_organ.mid: midisplit \$OUTDIR/${song}.midi || \$OUTDIR/midisplit/midisplit
  split_params=\$SPLIT_PARAMS_ORGAN
build \$OUTDIR/${song}_acc.mid: midisplit \$OUTDIR/${song}.midi || \$OUTDIR/midisplit/midisplit
  split_params=\$SPLIT_PARAMS_ACC
build \$OUTDIR/${song}_organ.wav: render \$OUTDIR/${song}_organ.mid
  soundfont=\$SOUNDFONT_ORGAN
  DEFAULT_FLUIDSYNTH_GAIN=0.75
build \$OUTDIR/${song}_acc.wav: render \$OUTDIR/${song}_acc.mid
  soundfont=\$SOUNDFONT_GENERALUSER
  DEFAULT_FLUIDSYNTH_GAIN=0.75
build \$OUTDIR/${song}.wav: render_combine \$OUTDIR/${song}_organ.wav \$OUTDIR/${song}_acc.wav
build \$RELEASEDIR/${song}.flac: normalize \$OUTDIR/${song}.wav
build \$RELEASEDIR/${song}.ogg: render_ogg \$RELEASEDIR/${song}.flac
build \$SONGNAMEDIR/fairground_style/${song}: write_song_name || \$RELEASEDIR/${song}.flac
_EOF_
  ADDEDSONGS="${ADDEDSONGS}$SONGNAMEDIR/fairground_style/$song "
done

for song in ${OTHER_SONGS[*]}; do
  SONGFILES=""
  for file in other_styles/${song}/*ly; do
    SONGFILES="${SONGFILES}$file "
  done
  cat >> build.ninja << _EOF_

build \$OUTDIR/${song}.midi \$RELEASEDIR/${song}.pdf: midi_pdf ${SONGFILES}
  main_file=other_styles/${song}/${song}.ly
build \$OUTDIR/${song}.wav: render \$OUTDIR/${song}.midi
  soundfont=\$SOUNDFONT_NICEKEYS_UPRIGHT
build \$RELEASEDIR/${song}.flac: normalize \$OUTDIR/${song}.wav
build \$RELEASEDIR/${song}.ogg: render_ogg \$RELEASEDIR/${song}.flac
build \$SONGNAMEDIR/other_styles/${song}: write_song_name || \$RELEASEDIR/${song}.flac
_EOF_
  ADDEDSONGS="${ADDEDSONGS}$SONGNAMEDIR/other_styles/$song "
done


cat >> build.ninja << _EOF_

build \$RELEASEDIR/index.html: generate_index $ADDEDSONGS \$GENOUTPUT_DIR/style.css \$GENOUTPUT_DIR/genoutput.sh
_EOF_


# Maybe enable this on CI if HDD space gets too low

# rule cleanup_files
#   command = rm \$in && touch \$out

# build \$OUTDIR/${song}_clean: cleanup_files \$OUTDIR/${song}.midi \$OUTDIR/${song}_organ.mid \$OUTDIR/${song}_acc.mid \$OUTDIR/${song}_organ.wav \$OUTDIR/${song}_acc.wav || \$RELEASEDIR/${song}.ogg
