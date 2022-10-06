#!/bin/bash

clear
echo
# Greeting.
echo "Who left this cup of tea here? Smells like it's been here for a couple of weeks. Probably should get rid of it." 
sleep 1; echo
# Guide for the user.
echo "You want to remove Homebrew packages?" 
echo "Type each package name here, seperated by spaces."
sleep 1
echo

# Prompts for package names.  
PACKAGE=$(gum input --placeholder "Enter package name(s)")
# Does nothing btw.
gum spin --spinner dot --title "Unbrewing...?" -- sleep 2.5; sleep 1; clear

# This asks yes or no.
gum confirm "Ready when you are! Depending on how you installed Homebrew, you might or might not need 'sudo'." --affirmative="I'm ready!" --negative="No thanks, I'd like to drink that tea." && brew uninstall "$PACKAGE" || echo "Okay, then."

sleep 0.5; clear
