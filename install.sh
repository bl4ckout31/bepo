#!/bin/sh

fr=/usr/share/X11/xkb/symbols/fr
base=/usr/share/X11/xkb/rules/base.xml
evdev=/usr/share/X11/xkb/rules/evdev.xml
map=/usr/share/kbd/keymaps/i386/bepo/fr-bepo_custom.map.gz

diff fr "$fr" > /dev/null
if [ $? -ne 0 ]; then
    cp "$fr" "$fr".back
    cp fr "$fr"
fi

diff base.xml "$base" > /dev/null
if [ $? -ne 0 ]; then
    cp "$base" "$base".back
    cp base.xml "$base"
fi

diff evdev.xml "$evdev" > /dev/null
if [ $? -ne 0 ]; then
    cp "$evdev" "$evdev".back
    cp evdev.xml "$evdev"
fi

diff fr-bepo_custom.map.gz "$map" > /dev/null
if [ $? -ne 0 ]; then
    cp fr-bepo_custom.map.gz "$map"
fi

exit 0
