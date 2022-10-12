#!/bin/bash

# If you're not very smart, you would benefit from me saying that this is for searching for packages. Although, you're looking at the contents of Bash scripts — and even using Linux/BSD/macOS/'insert some Unix-like system here' (why would you look at Bash scripts if you use Windows) — so I'd say you're pretty smart.

clear
echo

echo "We need to look for packages, it seems."
echo 
echo "First, tell me what you're looking for." 
echo "Then pick a package manager."
echo 
echo "Oh and by the way, if you want to search for native packages (the first package manager option here is usually one that installs native packages),"
echo "you'd be better off looking on repology.org. It's faster than searching through the package manager (I'm looking at you DNF) plus you can see if it's outdated or not!"

# Prompts for a package name.
echo
PACKAGE=$(gum input --placeholder "What are you looking for?")

# Selects package manager.
echo "Search with?"
echo
INSTMGR=$(gum choose --height=3 --cursor="> " --limit=1 "DNF." "Flatpak." "Homebrew.")
# This down here is experimental.
## INSTMGR=$(gum choose --height=3 --cursor="> " --limit=1 "$NATIVEPKG" "$AGNOSPKG" "$EXTRAPKG")

# Deploys the search party.
[[ "$INSTMGR" == "DNF." ]] && dnf search "$PACKAGE"
[[ "$INSTMGR" == "Flatpak." ]] && flatpak search "$PACKAGE"
[[ "$INSTMGR" == "Homebrew." ]] && brew search "$PACKAGE"

# Experimental.
    # [[ "$INSTMGR" == "$NATIVEPKG" ]] && $NATIVEPKGSEARCH "$PACKAGE"
    # [[ "$INSTMGR" == "$AGNOSPKG" ]] && $AGNOSPKGSEARCH "$PACKAGE"
    # [[ "$INSTMGR" == "$EXTRAPKG" ]] && $EXTRAPKGSEARCH "$PACKAGE"