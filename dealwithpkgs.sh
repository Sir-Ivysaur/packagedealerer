#!/bin/bash

# To make it immersive. Just clear the screen.
clear

# Starts with a greeting.
echo
echo "Oh, so you need to deal with packages?"
echo
sleep 1

# The choice list. Prompts the user to choose between these actions. Once the user has chosen, that choice is written to the $CHOICE variable.
CHOICE=$(gum choose --height=6 --cursor=">./ " --limit=1 "Install Packages!" "Remove Packages!" "Look for packages!" "Update Packages!" "Add a Repository!" "Exit!")

# This reads the variables to see if a specific option was chosen. Then executes the correct script, or a command.
[[ "$CHOICE" == "Install Packages!" ]] && sleep 1 && ./pkgsinst.sh
[[ "$CHOICE" == "Remove Packages!" ]] && sleep 1 && ./pkgsrem.sh
[[ "$CHOICE" == "Exit!" ]] && clear && sleep 1 && echo "Okay, then. Have a good day!" && sleep 1 && clear