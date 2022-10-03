#!/bin/bash

clear
echo
echo "So you want to install packages using DNF, huh?" 
sleep 1; echo
echo "First, you must enter the package name(s)." 
echo "When entering multiple packages, just type each of their names one after the other."
sleep 1; echo "Take a deep breath and make sure your selection of packages is what you want."
echo

PACKAGE=$(gum input --placeholder "Enter package name(s)")
gum spin --spinner dot --title "Reading your list of packages..." -- sleep 2.5; sleep 1; clear

gum confirm "Okay, then. Ready to install? You need the 'sudo' pass btw." --affirmative="Let's do it!" --negative="Hm, maybe next time." && sudo dnf install "$PACKAGE" || echo "Okay, then."

sleep 0.5; clear
