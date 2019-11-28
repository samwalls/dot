#!/bin/bash

# TODO: separate software installation from configuration

pacman -Sy emacs

# LSP layers and various others are currently only available on the develop branch of spacemacs
git clone --single-branch --branch develop https://github.com/syl20bnr/spacemacs ${HOME}/.emacs.d
