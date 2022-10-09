#!/bin/bash

# To make it immersive. Just clear the screen.
clear

# Presents ASCII art. Generated with textkool.com's ASCII art generator, using its Pagga font.
echo
cat .logo.txt
echo
sleep 1

# The choice list. Prompts the user to choose between these actions. Once the user has chosen, that choice is written to the $CHOICE variable.
CHOICE=$(gum choose --height=7 --cursor="> " --limit=1 "Install Packages!" "Remove Packages!" "Look for packages!" "Update Packages!" "About?" "Exit!")

# This reads the variables to see if a specific option was chosen. Then executes the correct script, or a command.
[[ "$CHOICE" == "Install Packages!" ]] && sleep 1 && ./pkgsinst.sh
[[ "$CHOICE" == "Remove Packages!" ]] && sleep 1 && ./pkgsrem.sh
[[ "$CHOICE" == "Look for packages!" ]] && sleep 1 && ./pkgssearch.sh
[[ "$CHOICE" == "Update Packages!" ]] && sleep 1 && ./pkgsupdate.sh
[[ "$CHOICE" == "About?" ]] && sleep 1 && clear && cat .about.md | gum format -t markdown
[[ "$CHOICE" == "Exit!" ]] && clear && sleep 1 && echo "Okay, then. Have a good day!" && sleep 1 && clear