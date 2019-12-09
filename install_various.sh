#!/bin/bash

PM="yay"
# TODO: do we want noconfirm or not?
INSTALL="-Sy --noconfirm"

# install package manager wrapper
sudo pacman ${INSTALL} "${PM}"

########################
# install various things
########################
${PM} ${INSTALL} ccat # colour cat
${PM} ${INSTALL} bat # better cat
${PM} ${INSTALL} ripgrep # rust implementation of grep
${PM} ${INSTALL} exa # rust implementation of ls with better colour support
${PM} ${INSTALL} zsh # z-shell
${PM} ${INSTALL} antigen-git # theme manager for zsh, required for $DOTFILE_PATH/zsh/.zshrc
