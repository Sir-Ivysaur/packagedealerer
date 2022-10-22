#!/bin/bash

# To make it immersive. Just clear the screen.
clear

# (Experimental) Something to change each package manager without touching each script yourself. This would be practical, but the special guidance I've written for each script are tailored to the default package managers, so maybe I'll edit those to be more general. And/or perhaps make a list of some package managers so the guidance will change to help with that specific one.
    ## Here are some for native packages. Because I run Fedora, this is on DNF by default. Changing this is mandatory if you have a different distro like Debian or Arch.
        
        # This variable shows the name of the package manager. Supposedly helps change the text on the lists of options.
            export NATIVEPKG=DNF.
        
        # This variable specifies the install command for native packages.
            export NATIVEPKGINST="sudo dnf install"

        # This variable specifies the remove command for native packages.
            export NATIVEPKGREM="sudo dnf remove"
        
        # This variable specifies the search command for native packages.
            export NATIVEPKGSEARCH="dnf search"
        
        # This variable specifies the update command for native packages.
            export NATIVEPKGUPDATE="sudo dnf update"

    ## Here are some for distro-agnostic packages. Flatpak is the future, so it has Flatpak set by default. You could change this, but I recommend Flatpak over Snap, because Snap sucks. Deal with it, Canonical. No offense, I love Ubuntu, but it's slowly crumbling into pieces at this point.
        
        # This variable shows the name of the package manager. Supposedly helps change the text on the lists of options.
            export AGNOSPKG=Flatpak.
        
        # This variable specifies the install command for distro-agnostic packages.
            export AGNOSPKGINST="flatpak install"
        
        # This variable specifies the remove command for distro-agnostic packages.
            export AGNOSPKGREM="flatpak remove"
        
        # This variable specifies the search command for distro-agnostic packages.
            export AGNOSPKGSEARCH="flatpak search"
        
        # This variable specifies the update command for distro-agnostic packages.
            export AGNOSPKGUPDATE="flatpak update"

    ## This is for extra package managers. We have Homebrew set by default, though you could switch it with something like the Nix package managers. Homebrew is pretty good, probably the easiest for beginners to install, just use one script (there are extra steps, though), but replace it with anything you want.
        
        # This variable shows the name of the package manager. Supposedly helps change the text on the lists of options.
            export EXTRAPKG=Homebrew.
        
        # This variable specifies the install command for the extra package manager.
            export EXTRAPKGINST="brew install"

        # This variable specifies the remove command for the extra package manager.
            export EXTRAPKGREM="brew uninstall"
        
        # This variable specifies the search command for the extra package manager.
            export EXTRAPKGSEARCH="brew search"
        
        # This variable specifies the update command for the extra package manager.
            export EXTRAPKGUPDATE="brew upgrade"

# Presents ASCII art. Generated with textkool.com's ASCII art generator, using its Pagga font. This pulls it from the .about.md file.
    echo
    head .about.md
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
    [[ "$CHOICE" == "Exit!" ]] && clear && sleep 1 && echo "Okay, then. Have a good day!" && sleep 2 && clear