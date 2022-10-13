#!/bin/bash

clear
echo
# Greeting.
echo "Need to cut down on native packages? Let me see what DNF will do for you." 
sleep 1; echo
# Guide for the user.
echo "Tell me what packages you need to remove!" 
echo "Type each package name one after the other. Seperate them with spaces only."
sleep 1; echo "Make sure your head is clear and you're not deleting your entire desktop environment. Don't blame me if you accidentally deleted something important!"
echo

# Prompts for package names.
PACKAGE=$(gum input --placeholder "Enter package name(s)")
# Does nothing btw.
gum spin --spinner dot --title "Looking at the package hit-list." -- sleep 2.5; sleep 1; clear

# This asks yes or no.
gum confirm "I have the bin ready! Are we ready to remove packages? You need the 'sudo' pass btw." --affirmative="Fire the nuke!!!" --negative="Spare the packages' lives." && sudo dnf remove "$PACKAGE" || echo "Okay, then."

# Uses variable package manager.
gum confirm "I have the bin ready! Are we ready to remove packages? You need the 'sudo' pass btw." --affirmative="Fire the nuke!!!" --negative="Spare the packages' lives." && $NATIVEPKGREM "$PACKAGE" || echo "Okay, then."

sleep 0.5; clear
