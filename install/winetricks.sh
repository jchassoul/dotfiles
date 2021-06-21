#!/bin/bash

# do not use root here

rm -rf ~/.wine

cd ~/.local/bin

wget -nc https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks

chmod +X winetricks

WINEARCH=win32 wineboot
winetricks -q vcrun2012
winetricks -q vcrun2013
winetricks -q dxvk
