#!/bin/bash

clear
echo
echo "I hear ya, I will help you install some Flatpak packages."
sleep 1; echo
echo "Just type in the app you need. You can browse through Flatpaks through Flathub, assuming that's your preferred remote." 
echo "If you have more than one app in mind, just type them as individual words."
sleep 1; echo "Remember, think before you install, but you generally do not have to worry about installing Flatpaks."
echo

PACKAGE=$(gum input --placeholder "Enter package name(s)")
gum spin --spinner dot --title "Inputting package names..." -- sleep 2.5; sleep 1; clear

gum confirm "We are ready, now!" --affirmative="Start installing!" --negative="Nah, not gonna do it right now." && flatpak install "$PACKAGE" || echo "Okay, then."

sleep 0.5; clear
