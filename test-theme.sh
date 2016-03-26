#!/bin/bash

PROFILE=default

./make-xpi.py theme

for directory in ~/.mozilla/firefox/*${PROFILE}
do
    cp gnome-firefox-theme.xpi $directory/extensions/{451500c0-902c-11e0-91e4-0800200c9a66}.xpi
done

killall firefox firefox-bin &>/dev/null; (firefox || firefox-dev) &
