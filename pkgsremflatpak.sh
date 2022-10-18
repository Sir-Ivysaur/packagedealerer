#!/bin/bash

clear
echo
# Greeting.
echo "Those Flatpaks aren't flat enough for you? Let's get rid of some, then!" 
sleep 1; echo
# Guide for the user.
echo "Which Flatpaks do you wish to remove?" 
echo "Seperated by spaces, type in the name of the app you'd like to remove. Though some apps are a bit iffy and they don't have their name as the package name. Also don't ever type 'github' here."
sleep 1; echo "Also, Flatpaks apps will keep their data intact. To erase that, look into the '.var' folder in your /home directory."
echo

# Prompts for package names.  
PACKAGE=$(gum input --placeholder "Enter package name(s)")
# Does nothing btw.
gum spin --spinner dot --title "Flattening something..." -- sleep 2.5; sleep 1; clear

# This asks yes or no.
# gum confirm "Ready to remove packages? You don't need 'sudo' for Flatpaks." --affirmative="Get the bin." --negative="Just leave it for now." && flatpak remove "$PACKAGE" || echo "Okay, then."

# Uses variable package manager instead of the pre-defined one, Flatpak.
gum confirm "Ready to remove packages? You don't need 'sudo' for Flatpaks." --affirmative="Get the bin." --negative="Just leave it for now." && $AGNOSPKGREM "$PACKAGE" || echo "Okay, then."

sleep 0.5; clear
