# FAQ, Reminders, and Common Issue Resolutions

## TODO

- somehow automate configurations for high-DPI/non-high-DPI situations

## Nuisances

### Hardware Beep

#### Fix

Add `blacklist pcspkr` to `/etc/modprobe.d/blacklist.conf` (and create blacklist.conf if it doesn't exist).

## Display & Monitors

### Dual Displays with DisplayPort Randomly Forgets Resolution Mode-line

#### Potential Fix (investigate)

Open `nvidia-settings` and save the "X Server Display Configuration" settings (with monitor resolutions set to something that isn't "auto") to `/etc/X11/mhwd.d/nvidia.conf`. Xorg should have a symlink to `/etc/X11/mhwd.d/nvidia.conf`, something like `/etc/X11/xorg.conf.d/90-mhwd.conf`.

## Emacs

### LSP Mode and Out-of-Source Builds

LSP mode looks for `compile_commands.json` in the project root, however if one is doing an out-of-source build, the compile commands file will also be outside the project root.

#### Fix (TODO: investigate better solutions)

Use a symlink `ln -s build/compile_commands.json compile_commands.json`. That way, whenever cmake is run again, the project root gets an updated `compile_commands.json`.
