#!/usr/bin/env bash

set -e

for song in $(cat songlist.txt); do
  oggenc --quality 7 "$song.flac"
done

cat > index.html << _EOF_
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>OpenRCT2-OpenMusic nightly builds</title>
<style>
h1, h2, p, td {
    font-family: Palatino, Arial, sans-serif;
}
</style>
</head>
<body>
<h1>OpenRCT2-OpenMusic nightly builds</h1>
<a href="https://github.com/ccoors/OpenRCT2-OpenMusic" target="_blank">https://github.com/ccoors/OpenRCT2-OpenMusic</a>
<p>Built from commit
_EOF_
git rev-parse HEAD >> index.html
echo " on " >> index.html
LC_ALL=C date --utc >> index.html
echo "</p><hr>" >> index.html

for song in $(cat songlist.txt); do
  echo "<h2>$song</h2>" >> index.html
  echo "<table><tr><th>File</th><th>Size</th></tr>" >> index.html
  for file in $song.flac $song.ogg; do
    filesize=$(($(wc -c <"$file") / 1000))
    echo "<tr><td><a href=\"$file\">$file</a></td><td>$filesize KB</td></tr>" >> index.html
  done
  echo "</table><p>" >> index.html
  sox "$song.flac" -n stat 2> stats.tmp
  grep "Length" stats.tmp >> index.html
  rm stats.tmp
  echo "</p>" >> index.html
done


cat >> index.html << _EOF_
</body>
</html>
_EOF_
