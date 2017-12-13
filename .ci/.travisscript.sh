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

echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

useradd -m -G wheel -s /usr/bin/bash build

sudo -u build yaourt -S --noconfirm ninja ttf-dejavu graphviz libsmf cmake lilypond fluidsynth calf sox opus-tools lv2file curl git openssh

cd /root/build
./getdependencies.sh --agree
./geninja.sh
./build.sh

if [ "$1" == "master" ]
then
  echo "Uploading artifacts..."
  mkdir -p /root/.ssh
  echo "phoenix.uberspace.de,2001:1a50:11:0:5f:8f:ac:87,95.143.172.135 ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHV8sbMwG3+68uuUFxRVPqrtYWVPu6N+9vujkriP6U15" >> /root/.ssh/known_hosts
  cd out/release
  scp -i ../../sshkey -r . "cuervo@phoenix.uberspace.de:html/openrct2-openmusic/ci/"
  cd ../..
else
  echo "Not uploading artifacts due to being on branch $1"
fi

rm sshkey
