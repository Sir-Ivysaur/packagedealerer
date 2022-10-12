#!/bin/bash

clear
echo

# The choice dialog.
echo "Which package manager would you like to install packages with?"
echo
INSTMGR=$(gum choose --height=3 --cursor="> " --limit=1 "DNF." "Flatpak." "Homebrew.")
# This down here is experimental.
## INSTMGR=$(gum choose --height=3 --cursor="> " --limit=1 "$NATIVEPKG" "$AGNOSPKG" "$EXTRAPKG")
sleep 1

# The choice is set as a variable, and these will respond and execute the corresponding script.
[[ "$INSTMGR" == "DNF." ]] && ./pkgsinstdnf.sh
[[ "$INSTMGR" == "Flatpak." ]] && ./pkgsinstflatpak.sh
[[ "$INSTMGR" == "Homebrew." ]] && ./pkgsinstbrew.sh

# Experimental form. Uncomment this and comment the above to test.
    # [[ "$INSTMGR" == "DNF." ]] && ./pkgsinstdnf.sh
    # [[ "$INSTMGR" == "Flatpak." ]] && ./pkgsinstflatpak.sh
    # [[ "$INSTMGR" == "Homebrew." ]] && ./pkgsinstbrew.sh
