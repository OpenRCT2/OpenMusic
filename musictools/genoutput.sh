#!/usr/bin/env bash

set -e

cat > index.html << _EOF_
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>OpenRCT2-OpenMusic nightly builds</title>
<style>
h1, h2, p, a, td, th {
    font-family: Helvetica, Arial, sans-serif;
}

th {
    text-align: left;
}

.hash {
    font-family: "Fira Code", "Source Code Pro", "Fantasque Sans Mono", "Courier New", monospace;
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
echo "</p><a href=\"depgraph.png\">Dependency graph</a> &middot; <a href=\"buildlog.txt\">Build log</a><hr>" >> index.html

for song_file in ../songnames/*; do
  song=$(basename $song_file)
  echo "<h2>$song</h2>" >> index.html
  echo "<table><tr><th>File</th><th>Size</th><th>sha256</th></tr>" >> index.html
  for file in $song.flac $song.ogg $song.pdf; do
    filesize=$(($(wc -c <"$file") / 1000))
    hash=$(sha256sum $file | colrm 64)
    echo "<tr><td><a href=\"$file\" target=\"_blank\">$file</a></td><td>$filesize KB</td><td class=\"hash\">$hash</td></tr>" >> index.html
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
