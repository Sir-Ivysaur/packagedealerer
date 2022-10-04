# The Package Dealerer (name still in the works!)
A tool to ease your package managing needs, all with the goodness of the terminal!
**Still a WIP!** Right now, only the install option works.

## What is it?
*Tired of typing commands?* Me too, I groan in pain when I have to write another command. I also hate dealing with GUI app stores, they take forever to load (I'm looking at you KDE Discover). So what should I do? Just smush the two together! **The Package Dealerer (name being worked on.) guides you through everything, and all you do is select buttons and type in the package names.** 

## How do you use it?
This is a Bash script. So you need Bash (duh). It also won't deal with .dmg files (because those don't have a CLI, as far as I know) so you can only use MacPorts and Homebrew on Macs.

**Just download the scripts (each and every one of them!), place them in the same directory, and run `chmod +x` on each script! Yes, it's annoying that you need to run a command on each of these, but it's a security thing, so you have to.** You can add them to your $PATH too, if you'd like. By the way, **you need to have [gum](https://github.com/charmbracelet/gum) installed**, otherwise literally nothing will work.

## Plans (other than finishing the other options)
**Currently, it only works with [DNF](https://docs.fedoraproject.org/en-US/fedora/latest/system-administrators-guide/package-management/DNF/) (the default package manager for [Fedora](https://getfedora.org/)), [Flatpak](https://www.flatpak.org/), and [Homebrew](https://brew.sh/) out of the box.** You *could* modify the script to make it work with other package managers, but 'modifying scripts' and 'ease your package managing needs' seem like opposite terms, so I'll try making something to help change the package manager without editing the scripts. In fact, I'll try to see if I can have it do this automatically by checking what distro you're using. But that's for another time. 

Perhaps I could also make it so that it will install Flatpak, Snap (lol no) or Homebrew if not installed. 
