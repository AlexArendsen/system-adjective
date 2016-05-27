#!/bin/bash

if [[ -z "$(pacman -Qs yaourt)" ]]; then
  echo "Yaourt isn't installed, please install it first."
  exit 1
fi

yaourt -S --needed xorg-server xorg-xinit pulseaudio feh rofi ttf-font-awesome powerline-fonts-git pulseaudio conky python-pip xorg-xrandr i3-gaps-git python-i3-git xorg-xprop vim lemonbar-xft-git archey3

sudo pip install powerline-status
pldir=$(pip show powerline-status | grep Location | sed -e 's/Location: //g')
ln -fs "${pldir}" "$HOME/powerline"
