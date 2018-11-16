#!/usr/bin/env bash

set -e

if [ "$1" == "" ]
then
  source ../config.sh
else
  source $1/musictools/config.sh
fi

cat > index.html << _EOF_
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>OpenRCT2/OpenMusic CI builds</title>
<link href="style.css" rel="stylesheet">
</head>
<body>
<h1>OpenRCT2/OpenMusic CI builds</h1>
<a href="https://github.com/OpenRCT2/OpenMusic" target="_blank">https://github.com/OpenRCT2/OpenMusic</a>
<p>Built from commit
_EOF_
if [ "$1" == "" ]
then
  echo $(git rev-parse HEAD) >> index.html
else
  echo $(cd $1 && git rev-parse HEAD) >> index.html
fi
echo " on " >> index.html
LC_ALL=C date --utc >> index.html
echo "</p><p>FLACs are currently not uploaded due to their size. This will change at some point. Until then, you can build them yourself.</p><p><a href=\"depgraph.svg\">Dependency graph</a> &middot; <a href=\"buildlog.txt\">Build log</a> &middot; <a href=\"sha256.txt\">SHA256 sums</a> &middot; <a href=\"copying.txt\">Copying</a> &middot; <a href=\"acknowledgements.txt\">Acknowledgements</a></p><p>In case some files appear to be corrupted, a CI build/upload might be currently in progress. Try again in a few minutes.</p><hr>" >> index.html

for style_file in ../songnames/*; do
  style=$(basename $style_file)
  echo "<div class=\"style\"><h2>$style</h2><div class=\"container\">" >> index.html
  for song_file in ../songnames/$style/*; do
    song=$(basename $song_file)
    cat >> index.html << _EOF_
<div class="song"><h3>$song</h3>

<table><tr><th>File</th><th>Size</th></tr>
_EOF_
    SONGFILES=($song.opus $song.pdf $song.png)
    if [ "$RELEASE_FLAC" != "0" ]
    then
      SONGFILES=($song.flac $song.opus $song.pdf $song.png)
    fi
    for file in ${SONGFILES[*]}; do
      filesize=$(($(wc -c <"$file") / 1000))
      echo "<tr><td><a href=\"$file\" target=\"_blank\">$file</a></td><td>$filesize KB</td></tr>" >> index.html
    done
    echo "</table><p>" >> index.html
    sox "../$song.flac" -n stat 2> stats.tmp
    grep "Length" stats.tmp >> index.html
    rm stats.tmp
    cat >> index.html << _EOF_

<audio controls>
  <source src="$song.opus" type="audio/ogg">
  <source src="$song.opus" type="audio/opus">
  Your browser does not support the audio element.
</audio>
</p></div>
_EOF_
  done
  echo "</div></div>" >> index.html
done

cat >> index.html << _EOF_
</body>
</html>
_EOF_
