# mtga-wine
Run MTG Arena on Linux with Wine 11 staging/tkg to work with tiling window managers like i3

# Instructions
- Clone this repo somewhere you'll keep it around: `https://github.com/rasen68/mtga-wine.git`
- Run `install-mtga-wine.sh` to install Wine 11 with a custom wine prefix in this repo (`mtga-wine/.wine/`) and run the MTGA installer through it
    - If you are on a 32 bit machine, you will need to install the 32 bit version of wine 11 (x86 instead of amd64)
- Use `mtga` to launch Magic Arena through this Wine
- You should probably add this directory to $PATH: `export PATH=$PATH:path/to/mtga-wine`
- `winebin` is a helper to use our wine installation and prefix

# Notes
- We start non-fullscreened as this helps for tiling WMs. You may have to adjust resolution.
- This wine installation will always use our local wine prefix and will not mess with your base wine (`~/.wine`) if present
- You can use `winebin wine`, `winebin winecfg`, etc. to do other stuff with this local wine
