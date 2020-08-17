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

### LSP Mode and Out-of-Source Builds

LSP mode looks for `compile_commands.json` in the project root, however if one is doing an out-of-source build, the compile commands file will also be outside the project root.

#### Fix (TODO: investigate better solutions)

Use a symlink `ln -s build/compile_commands.json compile_commands.json`. That way, whenever cmake is run again, the project root gets an updated `compile_commands.json`.
