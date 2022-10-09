#!/bin/bash

clear
echo

echo "We need to look for packages, it seems."
echo 
echo "First, tell me what you're looking for." 
echo "Then pick a package manager."
echo 
echo "Oh and by the way, if you want to search for native packages (the first package manager option here is usually one that installs native packages),"
echo "you'd be better off looking on repology.org. It's faster than searching through the package manager (I'm looking at you DNF) plus you can see if it's outdated or not!"

echo
PACKAGE=$(gum input --placeholder "What are you looking for?")

echo "Search with?"
echo
INSTMGR=$(gum choose --height=3 --cursor="> " --limit=1 "DNF." "Flatpak." "Homebrew.")

[[ "$INSTMGR" == "DNF." ]] && dnf search "$PACKAGE"
[[ "$INSTMGR" == "Flatpak." ]] && flatpak search "$PACKAGE"
[[ "$INSTMGR" == "Homebrew." ]] && brew search "$PACKAGE"
