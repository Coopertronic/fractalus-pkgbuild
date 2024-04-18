# fractalus-pkgbuild
The classic 1980's game Rescue on Fractalus remade for modern computers. This will become my own pkgbuild for Coopertronic OS.

## Build Instructions

All you need to build this package is the `PKGBUILD` file and the `fractalus.install.sh` file. Simply download them to a folder of your choice and run `makepkg -si` to download the assets and install the game for ArchLinux.

Please be aware that even though the game installs and is playable, it can only be launched from terminal at the moment. See the to do list below for more details.

#### To Do

- [ ] Find what is causing the following error when launching from the terminal. 
- `Loading in SingleInstance mode` 
  `Error opening /opt/fractalus/unity.lock: Permission denied`

- [ ] Desktop launcher is looking in opt for the game instead of running the bin launcher.
