#!/bin/bash

source $(dirname "$0")/installation_utils.sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cautious_install "${HOME}/.zshrc" "${DIR}/zsh/.zshrc"
cautious_install "${HOME}/.zshenv" "${DIR}/zsh/.zshenv"
cautious_install "${HOME}/.i3" "${DIR}/.i3"
cautious_install "${HOME}/.i3status.conf" "${DIR}/.i3status.conf"
cautious_install "${HOME}/.xinitrc" "${DIR}/.xinitrc"
cautious_install "${HOME}/.Xmodmap" "${DIR}/.Xmodmap"
cautious_install "${HOME}/.Xresources" "${DIR}/.Xresources"
cautious_install "${HOME}/.gdbinit" "${DIR}/.gdbinit"
cautious_install "${HOME}/.vimrc" "${DIR}/.vimrc"
