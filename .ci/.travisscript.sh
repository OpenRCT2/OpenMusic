#!/usr/bin/env bash

# DO NOT RUN THIS SCRIPT OUTSIDE OF TRAVIS/DOCKER!

echo "Building OpenRCT2-OpenMusic inside Travis CI"

cat >> /etc/pacman.conf << _EOF_
[archlinuxfr]
SigLevel = Optional TrustAll
Server = http://repo.archlinux.fr/x86_64

_EOF_

pacman -Syu --noconfirm
pacman -S --noconfirm base base-devel shadow yaourt

echo "%wheel ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers

useradd -m -G wheel -s /usr/bin/bash build

sudo -u build yaourt -S --noconfirm ninja graphviz libsmf cmake lilypond fluidsynth calf sox opus-tools lv2file curl git openssh

cd /root/build
./getdependencies.sh --agree
./geninja.sh
./build.sh

if [ "$1" == "master" ]
then
  echo "Uploading artifacts..."
  cd out/release
  scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -i ../../sshkey -r . "cuervo@phoenix.uberspace.de:html/openrct2-openmusic/ci/"
  cd ../..
else
  echo "Not uploading artifacts due to being on branch $1"
fi

rm sshkey
