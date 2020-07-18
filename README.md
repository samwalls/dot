# dotfiles

My dotfiles. Intended for various machines using Manjaro-i3.

## Installing

To install absolutely everything (all the proceeding installers will be run):
```bash
./install_all.sh
```

Assuming a blank-slate, to setup the AUR wrapper, and install packages:
```bash
./install_various.sh
```

To install dotfile symlinks in the directory defined by the current value of `HOME` environment variable:
```bash
./install_dotfiles.sh
```

To install spacemacs (emacs + spacemacs development branch), including a custom emacs theme in `${HOME}/.emacs.d/private/themes` to match the configured ZSH theme:
```bash
./install_spacemacs.sh
./configure_spacemacs.sh
```

To install and configure Javascript / Typescript development tools (this will also configure node package manager to use `${HOME}/.npm-global` as its global install root, with the same permissions as the current user):
```bash
./install_devel_js.sh
./configure_devel_js.sh
```
