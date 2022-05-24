#!/bin/mksh

xmodmap -e "clear lock" &>/dev/null
xmodmap -e "clear keycode 17" &>/dev/null
xmodmap -e "clear keycode 18" &>/dev/null
xmodmap -e "clear keycode 19" &>/dev/null
xmodmap -e "clear keycode 28" &>/dev/null
xmodmap -e "clear keycode 29" &>/dev/null
xmodmap -e "clear keycode 30" &>/dev/null
xmodmap -e "keysym Caps_Lock = Escape" &>/dev/null
xmodmap -e "keycode 28 = t T t T" &>/dev/null
xmodmap -e "keycode 29 = y Y y Y" &>/dev/null
xmodmap -e "keycode 30 = u U u U" &>/dev/null
xmodmap -e "keycode 17 = 8 asterisk 8 asterisk" &>/dev/null
xmodmap -e "keycode 18 = 9 parenleft 9 parenleft" &>/dev/null
xmodmap -e "keycode 19 = 0 parenright 0 parenright" &>/dev/null

echo dev
