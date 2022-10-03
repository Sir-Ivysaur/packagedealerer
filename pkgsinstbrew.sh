#!/bin/bash

clear
echo
echo "I'll go brew a cup of tea at home. Oh wait, you meant the package manager?" 
sleep 1; echo
echo "Write out what packages you want." 
echo "A package name does not have spaces. So type each package name as a seperate word. Type the exact name!"
sleep 1; echo "Make sure you're picking packages with a sane mind, and check your list."
echo

PACKAGE=$(gum input --placeholder "Tell me which packages you need.")
gum spin --spinner dot --title "Brewing up an install command..." -- sleep 2.5; sleep 1; clear

gum confirm "Time to brew! You don't need 'sudo' for Homebrew." --affirmative="Glug, glug." --negative="Not thirsty." && brew install "$PACKAGE" || echo "Okay, then."

sleep 0.5; clear
