# FAQ, Reminders, and Common Issue Resolutions

## TODO

- somehow automate configurations for high-DPI/non-high-DPI situations

## System Settings

### Default Browser

In addition to setting `$BROWSER` in `~/.profile` to the application of choice, one should use `xdg-mime` to set appropriate application for desired mime types.

E.g., check the current mime types:
```
xdg-mime query default x-scheme-handler/https
```

Set mime handlers:
```
xdg-mime default google-chrome-stable.desktop x-scheme-handler/https
xdg-mime default google-chrome-stable.desktop x-scheme-handler/http
```

## Application Settings

### Multiple SSH Identities

One may want to use different SSH keys for specific hostname scenarios.
This can be done using differing local bindings of the same SSH address as appropriate, assigning each one a different key.
To do so, one should configure this in `~/.ssh/config`, using the following example:

```
...

Host [alias]
    HostName [hostname]
    User [user]
    IdentityFile [path]
    IdentitiesOnly yes
...
```

This aliases the SSH address `[user]@[alias]` to the actual address `[user]@[hostname]` using the key stored in `[path]`.
The `[alias]` string may be the same as the `[hostname]` string.

This is particularly useful for using different SSH keys for different sets of git repositories.
For example:

```
Host github.com-companyname
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_rsa_companyname
    IdentitiesOnly yes
```

This configuration will allow one to use `git@github.com-companyname:myuser/repository.git` as a remote, using the specific SSH key from `~/.ssh/id_rsa_companyname`.


## Nuisances

### dmenu history autocompletes a previously mistaken command

On my system, I find that the autocomplete data is kept inside `~/.cache/dmenu-recent/recent`, however some sources online say it should be in `~/.config/dmenu-recent/background`.

### Hardware Beep

#### Fix

Add `blacklist pcspkr` to `/etc/modprobe.d/blacklist.conf` (and create blacklist.conf if it doesn't exist).

### Scarlett 2i2 Shutting Off due to Inactivity

Check `tlp-stat -u` for the ID of the Scarlett device.

Add `USB_BLACKLIST="ID1:ID2"` to a `.conf` file in `/etc/tlp.d/`, and reboot.

## Display & Monitors

### Dual Displays with DisplayPort Randomly Forgets Resolution Mode-line

#### Potential Fix (investigate)

Open `nvidia-settings` and save the "X Server Display Configuration" settings (with monitor resolutions set to something that isn't "auto") to `/etc/X11/mhwd.d/nvidia.conf`. Xorg should have a symlink to `/etc/X11/mhwd.d/nvidia.conf`, something like `/etc/X11/xorg.conf.d/90-mhwd.conf`.

## Emacs

### Updating Changes to PATH

AFAIK, `PATH` is derived from `~/.spacemacs.env`, which is generated using `exec-path-from-shell`. If the file already exists, it won't be updated. In order to copy `PATH` from the current `~/.zshenv`, delete `~/.spacemacs.env` and restart spacemacs.

TODO: will this cause any problems, or can `.spacemacs.env` always be fully regenerated?

### LSP Mode and Out-of-Source Builds

LSP mode looks for `compile_commands.json` in the project root, however if one is doing an out-of-source build, the compile commands file will also be outside the project root.

#### Fix (TODO: investigate better solutions)

Use a symlink `ln -s build/compile_commands.json compile_commands.json`. That way, whenever cmake is run again, the project root gets an updated `compile_commands.json`.

### Powerline Looks Janky

Spaceline/powerline may need `ttf-unifont` to work best. Additionally, `ttf-unifont` had problems last time I tried installing it. One may need to add `keyserver hkps://keyserver.ubuntu.com` to `~/.gnupg/gpg.conf` in order to get the checksum for the package.

## macOS (big sur onwards)

### disable + deprioritise web results in spotlight search

```
defaults write com.apple.spotlight orderedItems -array \
        '{"enabled" = 1;"name" = "APPLICATIONS";}' \
        '{"enabled" = 1;"name" = "SYSTEM_PREFS";}' \
        '{"enabled" = 1;"name" = "DIRECTORIES";}' \
        '{"enabled" = 1;"name" = "PDF";}' \
        '{"enabled" = 0;"name" = "FONTS";}' \
        '{"enabled" = 1;"name" = "DOCUMENTS";}' \
        '{"enabled" = 0;"name" = "MESSAGES";}' \
        '{"enabled" = 0;"name" = "CONTACT";}' \
        '{"enabled" = 0;"name" = "EVENT_TODO";}' \
        '{"enabled" = 1;"name" = "IMAGES";}' \
        '{"enabled" = 0;"name" = "BOOKMARKS";}' \
        '{"enabled" = 1;"name" = "MUSIC";}' \
        '{"enabled" = 1;"name" = "MOVIES";}' \
        '{"enabled" = 1;"name" = "PRESENTATIONS";}' \
        '{"enabled" = 1;"name" = "SPREADSHEETS";}' \
        '{"enabled" = 0;"name" = "SOURCE";}' \
        '{"enabled" = 0;"name" = "MENU_DEFINITION";}' \
        '{"enabled" = 0;"name" = "MENU_OTHER";}' \
        '{"enabled" = 0;"name" = "MENU_CONVERSION";}' \
        '{"enabled" = 0;"name" = "MENU_EXPRESSION";}' \
        '{"enabled" = 0;"name" = "MENU_WEBSEARCH";}' \
        '{"enabled" = 0;"name" = "MENU_SPOTLIGHT_SUGGESTIONS";}'
```

### Python Issues on Apple M1-based macs

1. Don't use `pyenv` for now, all installed versions I tried had unique issues, mostly regarding compiling/linking.
2. Use `brew install python` etc. instead, add `$HOME/Library/Python/<version>/bin` to `PATH`.

#### Installing `numpy`
###### (and anything that depends on it)

Numpy can't compile by default (at the moment) - and therefore also any package which depends on numpy - on an M1-based mac with big sur. To fix this, run:

```
brew install openblas
OPENBLAS="$(brew --prefix openblas)" python -m pip install <whatever>
```

