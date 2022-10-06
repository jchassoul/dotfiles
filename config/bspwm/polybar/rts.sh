#!/bin/mksh

xmodmap -e "clear keycode 17" &>/dev/null
xmodmap -e "clear keycode 18" &>/dev/null
xmodmap -e "clear keycode 19" &>/dev/null
xmodmap -e "clear keycode 28" &>/dev/null
xmodmap -e "clear keycode 29" &>/dev/null
xmodmap -e "keysym Super_L = Tab" &&>/dev/null
xmodmap -e "clear keycode 30" &>/dev/null
xmodmap -e "clear keycode 66" &>/dev/null
xmodmap -e "keycode 66 = Pointer_Button2" &>/dev/null
xmodmap -e "keycode 23 = F2" &>/dev/null
xmodmap -e "keycode 49 = F3" &>/dev/null
xmodmap -e "keycode 67 = F4" &>/dev/null
xmodmap -e "keycode 17 = t T t T" &>/dev/null
xmodmap -e "keycode 18 = y Y y Y" &>/dev/null
xmodmap -e "keycode 19 = u U u U" &>/dev/null
xmodmap -e "keycode 28 = 8 asterisk 8 asterisk" &>/dev/null
xmodmap -e "keycode 29 = 9 parenleft 9 parenleft" &>/dev/null
xmodmap -e "keycode 30 = 0 parenright 0 parenright" &>/dev/null

xinput set-button-map 13 1 2 3 0 0 0 0 &>/dev/null

echo rts
