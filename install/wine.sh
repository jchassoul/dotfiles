#!/bin/bash

dpkg --add-architecture i386

apt update

apt -y install --install-recommends libgnutls30:i386 libldap-2.4-2:i386\
    libgpg-error0:i386 libxml2:i386 libasound2-plugins:i386 libsdl2-2.0-0:i386\
    libsdl2-2.0-0 libavutil56 libavcodec58 libavutil56:i386 libavcodec58:i386\
    libfreetype6:i386 libdbus-1-3:i386 libsqlite3-0:i386 libgl1-mesa-glx:i386\
    libgl1-mesa-dri:i386 libstb0 libstb0:i386 mesa-vulkan-drivers xvfb libc-bin\
    mesa-vulkan-drivers:i386

# libgaudio from backports!

wget -nc https://dl.winehq.org/wine-builds/debian/dists/buster/main/binary-i386/winehq-staging_5.13~buster_i386.deb
wget -nc https://dl.winehq.org/wine-builds/debian/dists/buster/main/binary-i386/wine-staging-i386_5.13~buster_i386.deb
wget -nc https://dl.winehq.org/wine-builds/debian/dists/buster/main/binary-i386/wine-staging_5.13~buster_i386.deb

wget -nc https://dl.winehq.org/wine-builds/debian/dists/buster/main/binary-amd64/winehq-staging_5.13~buster_amd64.deb
wget -nc https://dl.winehq.org/wine-builds/debian/dists/buster/main/binary-amd64/wine-staging-amd64_5.13~buster_amd64.deb
wget -nc https://dl.winehq.org/wine-builds/debian/dists/buster/main/binary-amd64/wine-staging_5.13~buster_amd64.deb

dpkg -i wine-staging-i386_5.13~buster_i386.deb
dpkg -i wine-staging_5.13~buster_i386.deb
dpkg -i winehq-staging_5.13~buster_i386.deb

apt --fix-broken install

dpkg -i wine-staging-amd64_5.13~buster_amd64.deb
dpkg -i wine-staging_5.13~buster_amd64.deb
dpkg -i winehq-staging_5.13~buster_amd64.deb

apt --fix-broken install

apt -y install winetricks 
