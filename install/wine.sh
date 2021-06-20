#!/bin/bash

dpkg --add-architecture i386

apt install --install-recommends\
    libgnutls30:i386\
    libldap-2.4-2:i386\
    libgpg-error0:i386\
    libxml2:i386\
    libasound2-plugins:i386\
    libsdl2-2.0-0:i386\
    libfreetype6:i386\
    libdbus-1-3:i386\
    libsqlite3-0:i386\
    libgl1-mesa-glx:i386\
    libgl1-mesa-dri:i386\
    mesa-vulkan-drivers\
    xvfb\
 -y

https://dl.winehq.org/wine-builds/debian/dists/buster/main/binary-amd64/
https://dl.winehq.org/wine-builds/debian/dists/buster/main/binary-i386/
