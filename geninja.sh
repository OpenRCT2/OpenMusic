#!/usr/bin/env bash

OUTDIR=out
RELEASE=release
SONGNAMES=songnames

RELEASEDIR=$OUTDIR/$RELEASE
SONGNAMEDIR=$OUTDIR/$SONGNAMES

ORGAN_SONGS=(testsong overture regimentskinder serenade strauss_waltzes)
OTHER_SONGS=(ragtime)
ADDEDSONGS=""

mkdir -p $RELEASEDIR
mkdir -p $SONGNAMEDIR
mkdir -p $OUTDIR/midisplit

cat > build.ninja << _EOF_
builddir=$OUTDIR
OUTDIR=$OUTDIR
RELEASEDIR=$RELEASEDIR
SONGNAMEDIR=$SONGNAMEDIR

rule midi_pdf
  command = echo "\$in" && lilypond -dno-point-and-click -ddelete-intermediate-files \$\$include --pdf \$\$filename \$main_file && mv \$\$(basename -s .ly \$main_file).pdf \$OUTDIR/release && mv \$\$(basename -s .ly \$main_file).midi \$OUTDIR

rule cmake
  command = cmake -B\$\$(dirname \$out) -H\$in && cd \$\$(dirname \$out) && make

rule midisplit_organ
  command = \$OUTDIR/midisplit/midisplit -k 19 -k 16 -k 20 -v -o \$out \$in

rule midisplit_acc
  command = \$OUTDIR/midisplit/midisplit -k 11 -p -m 48 -v -o \$out \$in

rule render_organ
  command = fluidsynth -nli -r 48000 -o synth.cpu-cores=2 -T wav -F \$out -g 0.75 soundfonts/BureaFuneralChapel.sf2 \$in

rule render_acc
  command = fluidsynth -nli -r 48000 -o synth.cpu-cores=2 -T wav -F \$out -g 0.75 soundfonts/GeneralUser\ GS\ v1.471.sf2 \$in

rule render_default
  command = fluidsynth -nli -r 48000 -o synth.cpu-cores=2 -T wav -F \$out -g 1.0 soundfonts/GeneralUser\ GS\ v1.471.sf2 \$in

rule render_combine
  command = sox --show-progress --combine mix \$in \$out

rule convert
  command = sox --show-progress \$in \$out

rule render_ogg
  command = oggenc --quality 7 --output=\$out \$in

rule write_song_name
  command = touch \$out

rule generate_index
  command = cd \$RELEASEDIR && ../../musictools/genoutput.sh

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
build \$OUTDIR/${song}_organ.mid: midisplit_organ \$OUTDIR/${song}.midi || \$OUTDIR/midisplit/midisplit
build \$OUTDIR/${song}_acc.mid: midisplit_acc \$OUTDIR/${song}.midi || \$OUTDIR/midisplit/midisplit
build \$OUTDIR/${song}_organ.wav: render_organ \$OUTDIR/${song}_organ.mid
build \$OUTDIR/${song}_acc.wav: render_acc \$OUTDIR/${song}_acc.mid
build \$RELEASEDIR/${song}.flac: render_combine \$OUTDIR/${song}_organ.wav \$OUTDIR/${song}_acc.wav
build \$RELEASEDIR/${song}.ogg: render_ogg \$RELEASEDIR/${song}.flac
build \$SONGNAMEDIR/${song}: write_song_name || \$RELEASEDIR/${song}.flac
_EOF_
  ADDEDSONGS="${ADDEDSONGS}$SONGNAMEDIR/$song "
done

for song in ${OTHER_SONGS[*]}; do
  SONGFILES=""
  for file in other_styles/${song}/*ly; do
    SONGFILES="${SONGFILES}$file "
  done
  cat >> build.ninja << _EOF_

build \$OUTDIR/${song}.midi \$RELEASEDIR/${song}.pdf: midi_pdf ${SONGFILES}
  main_file=other_styles/${song}/${song}.ly
build \$OUTDIR/${song}.wav: render_default \$OUTDIR/${song}.midi
build \$RELEASEDIR/${song}.flac: convert \$OUTDIR/${song}.wav
build \$RELEASEDIR/${song}.ogg: render_ogg \$RELEASEDIR/${song}.flac
build \$SONGNAMEDIR/${song}: write_song_name || \$RELEASEDIR/${song}.flac
_EOF_
  ADDEDSONGS="${ADDEDSONGS}$SONGNAMEDIR/$song "
done


cat >> build.ninja << _EOF_

build \$RELEASEDIR/index.html: generate_index $ADDEDSONGS
_EOF_

ninja | tee $RELEASEDIR/buildlog.txt

# Maybe enable this on CI if HDD space gets too low

# rule cleanup_files
#   command = rm \$in && touch \$out

# build \$OUTDIR/${song}_clean: cleanup_files \$OUTDIR/${song}.midi \$OUTDIR/${song}_organ.mid \$OUTDIR/${song}_acc.mid \$OUTDIR/${song}_organ.wav \$OUTDIR/${song}_acc.wav || \$RELEASEDIR/${song}.ogg
