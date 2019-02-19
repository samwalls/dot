#!/bin/bash

# TODO: separate software installation from configuration

yaourt -S emacs

git clone https://github.com/syl20bnr/spacemacs ${HOME}/.emacs.d
