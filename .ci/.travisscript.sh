#!/usr/bin/env bash

# DO NOT RUN THIS SCRIPT OUTSIDE OF TRAVIS/DOCKER!

set -e

echo "Building OpenRCT2-OpenMusic inside Travis CI"

pacman -Syu --noconfirm
pacman -S --noconfirm base base-devel shadow sudo git python python-requests python-regex python-dateutil python-feedparser pyalpm expac ninja ttf-dejavu graphviz libsmf cmake lilypond fluidsynth calf sox opus-tools curl openssh
echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

useradd -m -G wheel -s /usr/bin/bash build

TEMPDIR=$(mktemp -d)
git clone "https://github.com/polygamma/aurman.git" $TEMPDIR
cd $TEMPDIR
chmod 777 -R .
chown -R build .
sudo -u build makepkg --skipinteg --install --noconfirm

sudo -u build aurman -S --noconfirm --noedit --skip_news --skip_new_locations lv2file

export PATH="$PATH:/usr/bin/vendor_perl"

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

shred -u sshkey
