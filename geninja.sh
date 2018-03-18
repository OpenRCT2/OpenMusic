#!/usr/bin/env bash

source musictools/config.sh

ADDEDSONGS=""
BASEDIR=$(pwd)
mkdir -p $RELEASEDIR
mkdir -p $SONGNAMEDIR/fairground_style
mkdir -p $SONGNAMEDIR/other_styles
mkdir -p $OUTDIR/midiprepare

cat > build.ninja << _EOF_
builddir=$OUTDIR
OUTDIR=$OUTDIR
RELEASEDIR=$RELEASEDIR
SONGNAMEDIR=$SONGNAMEDIR
SOUNDFONTSDIR=$SOUNDFONTSDIR
BASEDIR=$BASEDIR

GENINDEX_DIR=musictools/genindex

SAMPLING_RATE=$SAMPLING_RATE
NORMALIZE_GAIN=$NORMALIZE_GAIN

PREPARE_PARAMS_ORGAN=-s -f 19 -t 0 -f 16 -t 1 -f 20 -t 2 -f 18 -t 3 -n
PREPARE_PARAMS_GLOCKENSPIEL=-s -f 11 -t 8 -n
PREPARE_PARAMS_MAP_PERCUSSION=-m 48
PREPARE_PARAMS_PERCUSSION=-s -p \$PREPARE_PARAMS_MAP_PERCUSSION -n

SOUNDFONT_ORGAN="$SOUNDFONTSDIR/$SOUNDFONT_ORGAN"
SOUNDFONT_GENERALUSER="$SOUNDFONTSDIR/$SOUNDFONT_GENERALUSER"
SOUNDFONT_FLUIDR3="$SOUNDFONTSDIR/$SOUNDFONT_FLUIDR3"
SOUNDFONT_K18="$SOUNDFONTSDIR/$SOUNDFONT_K18"

CALF_REVERB_PLUGIN="$CALF_REVERB_PLUGIN"

DEFAULT_FLUIDSYNTH_GAIN=0.5

rule midi_pdf
  command = lilypond -dno-point-and-click -ddelete-intermediate-files --pdf \$\$filename \$main_file && mv \$\$(basename -s .ly \$main_file).pdf \$OUTDIR/release && mv \$\$(basename -s .ly \$main_file).midi \$OUTDIR

rule cmake
  command = cmake -B\$\$(dirname \$out) -H\$in && cd \$\$(dirname \$out) && make

rule midiprepare
  command = \$OUTDIR/midiprepare/midiprepare \$split_params -v -o \$out \$in

rule render
  command = fluidsynth -nli -r \$SAMPLING_RATE -R 0 -T wav -F \$out -g \$DEFAULT_FLUIDSYNTH_GAIN \$soundfont \$in

rule combine
  command = sox --show-progress --combine mix \$in --comment "" \$out

rule convert
  command = sox --show-progress \$in  --comment "" \$out

rule apply_lv2
  command = lv2file -i \$in -o \$out \$plugin_options \$plugin

rule normalize
  command = sox --show-progress \$in --comment "" \$out gain -n \$NORMALIZE_GAIN

rule spectrogram
  command = sox \$in -n spectrogram -x 1920 -y 513 -z 100 -o \$out -t \$\$(basename -s .flac \$in) -c OpenRCT2-OpenMusic

rule copy
  command = cp \$in \$out

rule render_opus
  command = opusenc \$in \$out

rule write_song_name
  command = touch \$out

rule generate_index
  command = cd \$RELEASEDIR && cp \$BASEDIR/\$GENINDEX_DIR/style.css . && \$BASEDIR/\$GENINDEX_DIR/genindex.sh \$BASEDIR

rule dependency_graph
  command = ninja -t graph | dot -Tsvg -o\$out

build \$OUTDIR/midiprepare/midiprepare: cmake musictools/midiprepare || musictools/midiprepare/main.c

build \$RELEASEDIR/depgraph.svg: dependency_graph

build \$RELEASEDIR/acknowledgements.txt: copy $BASEDIR/acknowledgements.txt
build \$RELEASEDIR/copying.txt: copy $BASEDIR/COPYING

_EOF_

for song in ${ORGAN_SONGS[*]}; do
  SONGFILES=""
  for file in fairground_style/${song}/*ly; do
    SONGFILES="${SONGFILES}$file "
  done
  cat >> build.ninja << _EOF_

build \$OUTDIR/${song}.midi \$RELEASEDIR/${song}.pdf: midi_pdf ${SONGFILES}
  main_file=fairground_style/${song}/${song}.ly
build \$OUTDIR/${song}_organ.mid: midiprepare \$OUTDIR/${song}.midi || \$OUTDIR/midiprepare/midiprepare
  split_params=\$PREPARE_PARAMS_ORGAN
build \$OUTDIR/${song}_glockenspiel.mid: midiprepare \$OUTDIR/${song}.midi || \$OUTDIR/midiprepare/midiprepare
  split_params=\$PREPARE_PARAMS_GLOCKENSPIEL
build \$OUTDIR/${song}_percussion.mid: midiprepare \$OUTDIR/${song}.midi || \$OUTDIR/midiprepare/midiprepare
  split_params=\$PREPARE_PARAMS_PERCUSSION
build \$OUTDIR/${song}_organ.wav: render \$OUTDIR/${song}_organ.mid
  soundfont=\$SOUNDFONT_ORGAN
  DEFAULT_FLUIDSYNTH_GAIN=0.45
build \$OUTDIR/${song}_glockenspiel.wav: render \$OUTDIR/${song}_glockenspiel.mid
  soundfont=\$SOUNDFONT_FLUIDR3
  DEFAULT_FLUIDSYNTH_GAIN=0.35
build \$OUTDIR/${song}_percussion.wav: render \$OUTDIR/${song}_percussion.mid
  soundfont=\$SOUNDFONT_GENERALUSER
  DEFAULT_FLUIDSYNTH_GAIN=0.45
build \$OUTDIR/${song}.wav: combine \$OUTDIR/${song}_organ.wav \$OUTDIR/${song}_glockenspiel.wav \$OUTDIR/${song}_percussion.wav
build \$OUTDIR/${song}_reverb.wav: apply_lv2 \$OUTDIR/${song}.wav
  plugin=\$CALF_REVERB_PLUGIN
  plugin_options=-p decay_time:$REVERB_DECAY
build \$OUTDIR/${song}.flac: normalize \$OUTDIR/${song}_reverb.wav
build \$RELEASEDIR/${song}.opus: render_opus \$OUTDIR/${song}.flac
build \$RELEASEDIR/${song}.png: spectrogram \$OUTDIR/${song}.flac
build \$SONGNAMEDIR/fairground_style/${song}: write_song_name || \$OUTDIR/${song}.flac
_EOF_
  if [ "$RELEASE_FLAC" != "0" ];
  then
    cat >> build.ninja << _EOF_
build \$RELEASEDIR/${song}.flac: copy \$OUTDIR/${song}.flac
_EOF_
  fi
  ADDEDSONGS="${ADDEDSONGS}$SONGNAMEDIR/fairground_style/$song $RELEASEDIR/${song}.opus "
done

for song in ${OTHER_SONGS[*]}; do
  SONGFILES=""
  for file in other_styles/${song}/*ly; do
    SONGFILES="${SONGFILES}$file "
  done
  SOUNDFONT="SOUNDFONT_GENERALUSER"
  if [ "$song" == "ragtime" ]
  then
    SOUNDFONT="SOUNDFONT_K18"
  fi
  cat >> build.ninja << _EOF_

build \$OUTDIR/${song}.midi \$RELEASEDIR/${song}.pdf: midi_pdf ${SONGFILES}
  main_file=other_styles/${song}/${song}.ly
build \$OUTDIR/${song}_postprepare.mid: midiprepare \$OUTDIR/${song}.midi || \$OUTDIR/midiprepare/midiprepare
  split_params=\$PREPARE_PARAMS_MAP_PERCUSSION
build \$OUTDIR/${song}.wav: render \$OUTDIR/${song}_postprepare.mid
  soundfont=\$$SOUNDFONT
build \$OUTDIR/${song}_reverb.wav: apply_lv2 \$OUTDIR/${song}.wav
  plugin=\$CALF_REVERB_PLUGIN
  plugin_options=-p decay_time:$REVERB_DECAY
build \$OUTDIR/${song}.flac: normalize \$OUTDIR/${song}_reverb.wav
build \$RELEASEDIR/${song}.opus: render_opus \$OUTDIR/${song}.flac
build \$RELEASEDIR/${song}.png: spectrogram \$OUTDIR/${song}.flac
build \$SONGNAMEDIR/other_styles/${song}: write_song_name || \$OUTDIR/${song}.flac
_EOF_
  if [ "$RELEASE_FLAC" != "0" ];
  then
    cat >> build.ninja << _EOF_
build \$RELEASEDIR/${song}.flac: copy \$OUTDIR/${song}.flac
_EOF_
  fi
  ADDEDSONGS="${ADDEDSONGS}$SONGNAMEDIR/other_styles/$song $RELEASEDIR/${song}.opus "
done


cat >> build.ninja << _EOF_

build \$RELEASEDIR/index.html: generate_index $ADDEDSONGS \$GENINDEX_DIR/style.css \$GENINDEX_DIR/genindex.sh
_EOF_
