#!/bin/bash

clear

echo
echo "Oh, so you need to deal with packages?"
echo
sleep 1
CHOICE=$(gum choose --height=5 --cursor="> " --limit=1 "Install Packages!" "Remove Packages!" "Look for packages!" "Update Packages!" "Add a Repository!" "Exit!")

[[ "$CHOICE" == "Install Packages!" ]] && sleep 1 && ./pkgsinst.sh
[[ "$CHOICE" == "Remove Packages!" ]] && sleep 1 && ./pkgsrem.sh
echo
sleep 1
