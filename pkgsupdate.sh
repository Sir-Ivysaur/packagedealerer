#!/bin/bash

clear
echo

echo "You finally decided to do an update."
echo "I could have some package managers update specific packages only. However, Homebrew can't do this, it seems."
echo "By the way, if you want to upgrade everything (and I mean **everything**), consider trying 'topgrade'." | gum format -t markdown

YN=$(gum choose --height=2 --cursor="> " --limit=1 "Update specific packages." "Update everything.")

[[ "$YN" == "Update specific packages." ]] && PACKAGE=$(gum input --placeholder "Enter package name(s)")

INSTMGR=$(gum choose --height=3 --cursor="> " --limit=1 "DNF." "Flatpak." "Homebrew.")
sleep 1

[[ "$INSTMGR" == "DNF." ]] && sudo dnf update "$PACKAGE"
[[ "$INSTMGR" == "Flatpak." ]] && flatpak update "$PACKAGE"
[[ "$INSTMGR" == "Homebrew." ]] && gum spin --spinner dot --title "Updating catalog of Homebrew packages..." brew update && brew upgrade