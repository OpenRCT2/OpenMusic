#!/usr/bin/env bash

source musictools/config.sh

if [ -f build.ninja ];
then
  ninja | tee $RELEASEDIR/buildlog.txt
  cd $RELEASEDIR
  sha256sum * > sha256.txt
else
  echo "Couldn't find build.ninja. Build it using geninja.sh."
  exit 1
fi
