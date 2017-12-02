#!/usr/bin/env bash

set -e

cat > index.html << _EOF_
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>OpenRCT2-OpenMusic CI builds</title>
<link href="style.css" rel="stylesheet">
</head>
<body>
<h1>OpenRCT2-OpenMusic CI builds</h1>
<a href="https://github.com/ccoors/OpenRCT2-OpenMusic" target="_blank">https://github.com/ccoors/OpenRCT2-OpenMusic</a>
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
echo "</p><p><a href=\"depgraph.png\">Dependency graph</a> &middot; <a href=\"buildlog.txt\">Build log</a> &middot; <a href=\"sha256.txt\">SHA256 sums</a></p><hr>" >> index.html

for style_file in ../songnames/*; do
  style=$(basename $style_file)
  echo "<div class=\"style\"><h2>$style</h2><div class=\"container\">" >> index.html
  for song_file in ../songnames/$style/*; do
    song=$(basename $song_file)
    echo "<div class=\"song\"><h3>$song</h3>" >> index.html
    echo "<table><tr><th>File</th><th>Size</th></tr>" >> index.html
    for file in $song.flac $song.opus $song.pdf $song.png; do
      filesize=$(($(wc -c <"$file") / 1000))
      echo "<tr><td><a href=\"$file\" target=\"_blank\">$file</a></td><td>$filesize KB</td></tr>" >> index.html
    done
    echo "</table><p>" >> index.html
    sox "$song.flac" -n stat 2> stats.tmp
    grep "Length" stats.tmp >> index.html
    rm stats.tmp
    echo "</p></div>" >> index.html
  done
  echo "</div></div>" >> index.html
done

cat >> index.html << _EOF_
</body>
</html>
_EOF_
