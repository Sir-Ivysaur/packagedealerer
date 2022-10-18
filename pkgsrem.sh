#!/bin/bash

clear
echo

# | gum format -t markdown
# The choice dialog.
echo "Which package manager would you like to remove packages with?"
echo && INSTMGR=$(gum choose --height=3 --cursor="> " --limit=1 "DNF." "Flatpak." "Homebrew.")
# This down here is experimental.
## echo && INSTMGR=$(gum choose --height=3 --cursor="> " --limit=1 "$NATIVEPKG" "$AGNOSPKG" "$EXTRAPKG")
sleep 1

# The choice is set as a variable, and these will respond and execute the corresponding script.
    # [[ "$INSTMGR" == "DNF." ]] && ./pkgsremdnf.sh
    # [[ "$INSTMGR" == "Flatpak." ]] && ./pkgsremflatpak.sh
    # [[ "$INSTMGR" == "Homebrew." ]] && ./pkgsrembrew.sh

# Experimental form. Uncomment this and comment the above to test.
    [[ "$INSTMGR" == "$NATIVEPKG" ]] && ./pkgsremdnf.sh
    [[ "$INSTMGR" == "$AGNOSPKG" ]] && ./pkgsremflatpak.sh
    [[ "$INSTMGR" == "$EXTRAPKG" ]] && ./pkgsrembrew.sh
