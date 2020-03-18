# Fresh Install Checklist

## Dotfiles & Software

TODO: a lot of this could be automated

- install `git` and `yay`
- `install_pulse`
- `cd ~` then `git clone git@github.com:samwalls/dot.git --recurse-submodules .dot`
- `cd .dot` then `./install_various.sh`

### Emacs (Spacemacs)

- `./install_spacemacs.sh`
- `./configure_spacemacs.sh`
- `ln -s ~/.dot/.spacemacs ~/.spacemacs`

### X Resources & i3 Settings

- `rm -rf ~/.i3` (back this up first, if you want)
- `ln -s ~/.dot/.i3 ~/.i3`
- `rm .Xinitrc .Xresources` (back these up first, if you want)
- `ln -s ~/.dot/.xinitrc ~/.xinitrc`
- `ln -s ~/.dot/.Xresources ~/.Xresources`

### ZSH
- `rm ~/.zshrc` (back this up if you want, first)
- `ln -s ~/.dot/zsh/.zshrc ~/.zshrc`
- `chsh -s /bin/zsh`

## Customisation

- uncomment `#Color` from `/etc/pacman.conf`
- set urxvt font size via `URxvt.font` in `${DOTFILE_PATH}/.Xresources`
- set X dpi settings via `Xft.dpi` in `${DOTFILE_PATH}/.Xresources`
