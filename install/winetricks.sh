#!/bin/bash
rm -rf ~/.wine
WINEARCH=win32 wineboot
winetricks -q vcrun2012
winetricks -q vcrun2013
winetricks -q dxvk
