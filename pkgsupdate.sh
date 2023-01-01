#!/bin/bash

# This is for updating the system, if you didn't notice.

[[ "$IS_USER_A_DINGUS" == "TRUE" ]] && gum style \
	--border double --border-foreground 257 \
	--align center --width 50 --margin "1 2" --padding "2 4" \
	'You are a dingus.' && sleep 10s && clear

clear
echo

echo "You finally decided to do an update."
echo "I could have some package managers update specific packages only."
echo
echo "By the way, if you want to upgrade everything (and I mean everything), consider trying 'topgrade'."
echo

# A simple dialogue, asking if the user would like to update specific packages.
YN=$(gum choose --height=2 --cursor="> " --limit=1 "Update specific packages." "Update everything.")

# If the user did say they wanted to update only specific packages, this prompts for package names.
[[ "$YN" == "Update specific packages." ]] && PACKAGE=$(gum input --placeholder "Enter package name(s)")

# INSTMGR=$(gum choose --height=3 --cursor="> " --limit=1 "DNF." "Flatpak." "Homebrew.")

# Prompts the user to choose a package manager.
INSTMGR=$(gum choose --height=3 --cursor="> " --limit=1 "$NATIVEPKG" "$AGNOSPKG" "$EXTRAPKG")
sleep 1

# This asks which package manager to update packages with. Unlike the install and remove options, this goes straight to the command (same with the search option). Maybe I should do this with those two options.
    # [[ "$INSTMGR" == "DNF." ]] && sudo dnf update "$PACKAGE"
    # [[ "$INSTMGR" == "Flatpak." ]] && flatpak update "$PACKAGE"
    # [[ "$INSTMGR" == "Homebrew." ]] && gum spin --spinner dot --title "Updating catalog of Homebrew packages..." brew update && brew upgrade

# Experimental.
    [[ "$INSTMGR" == "$NATIVEPKG" ]] && $NATIVEPKGUPDATE "$PACKAGE"
    [[ "$INSTMGR" == "$AGNOSPKG" ]] && $AGNOSPKGUPDATE "$PACKAGE"
    [[ "$INSTMGR" == "$EXTRAPKG" ]] && $EXTRAPKGUPDATE "$PACKAGE"