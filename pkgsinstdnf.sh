#!/bin/bash

clear
echo
# Greeting.
echo "So you want to install packages using DNF, huh?" 
sleep 1; echo
# Guide for the user.
echo "First, you must enter the package name(s)." 
echo "When entering multiple packages, just type each of their names one after the other."
sleep 1; echo "Take a deep breath and make sure your selection of packages is what you want."
echo

# Asks where you want to grab packages from. Either a file (such as a .rpm or .deb file) or from the repos. I've commented these lines because I'm not sure if this works yet.
    # FROM=$(gum choose --cursor="> " --limit=1 "Download packages from the repos." "Install from a file.")
    # [[ "$FROM" == "Install from file." ]] && echo "Find your installation file! Use the arrow keys and the Enter key to select. Navigate through your /home until you find that file." && PACKAGE=$(gum file ~)
    # [[ "$FROM" == "Download packages from the repos." ]] && PACKAGE=$(gum input --placeholder "Enter package name(s)")

# Prompts for package names.
PACKAGE=$(gum input --placeholder "Enter package name(s)")
# Does nothing btw.
gum spin --spinner dot --title "Reading your list of packages..." -- sleep 2.5; sleep 1; clear

# This asks yes or no.
    # gum confirm "Okay, then. Ready to install? You need the 'sudo' pass btw." --affirmative="Let's do it!" --negative="Hm, maybe next time." && sudo dnf install "$PACKAGE" || echo "Okay, then."

# The confirmation dialog, but it uses the variable package manager.
    gum confirm "Okay, then. Ready to install? You need the 'sudo' pass btw." --affirmative="Let's do it!" --negative="Hm, maybe next time." && $NATIVEPKGINST "$PACKAGE" || echo "Okay, then."

sleep 0.5; clear
