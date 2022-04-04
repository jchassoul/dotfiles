#!/bin/bash

xmodmap -e "clear lock" &
xmodmap -e "clear keycode 17" &
xmodmap -e "clear keycode 18" &
xmodmap -e "clear keycode 19" &
xmodmap -e "clear keycode 28" &
xmodmap -e "clear keycode 29" &
xmodmap -e "clear keycode 30" &
xmodmap -e "keysym Caps_Lock = Pointer_Button2" &
xmodmap -e "keycode 17 = t T t T" &
xmodmap -e "keycode 18 = y Y y Y" &
xmodmap -e "keycode 19 = u U u U" &
xmodmap -e "keycode 28 = 8 asterisk 8 asterisk" &
xmodmap -e "keycode 29 = 9 parenleft 9 parenleft" &
xmodmap -e "keycode 30 = 0 parenright 0 parenright" &
