#!/bin/sh

fr=usr/share/X11/xkb/symbols/fr
base=usr/share/X11/xkb/rules/base.xml
evdev=usr/share/X11/xkb/rules/evdev.xml
map=usr/share/kbd/keymaps/i386/bepo/fr-bepo_custom.map.gz

# Restore original files
if [ -f "$fr".back ]; then
    cp "$fr".back "$fr"
    rm "$fr".back
fi

if [ -f "$base".back ]; then
    cp "$base".back "$base"
    rm "$base".back
fi

if [ -f "$evdev".back ]; then
    cp "$evdev".back "$evdev"
    rm "$evdev".back
fi

if [ -f "$map" ]; then
    rm "$map"
fi

exit 0
