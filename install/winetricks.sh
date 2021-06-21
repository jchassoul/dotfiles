#!/bin/bash

# do not use root here

rm -rf ~/.wine

mkdir -p ~/.local/bin

cd ~/.local/bin

wget -nc https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks

chmod +x winetricks

WINEARCH=win32 wineboot

winetricks -q vcrun2012

winetricks -q vcrun2013

winetricks -q dxvk181
