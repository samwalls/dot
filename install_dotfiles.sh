#!/bin/bash

function yesno() {
    read -p "$1 [y/n]: " -n 1 -r && printf "\n"
    if [[ ! "${REPLY}" =~ ^[yY]$ ]]; then
        return 1
    fi
}

function install() {
    linkdir="${1}"
    sourcedir="${2}"
    rm -rf "${linkdir}"
    ln -s "${sourcedir}" "${linkdir}"
}

function cautious_install() {
    linkdir="${1}"
    sourcedir="${2}"
    if $([[ ! -f "${linkdir}" ]] && [[ ! -d "${linkdir}" ]]) || yesno "${linkdir} already exists, do you want to overwrite it?"; then
        install "${linkdir}" "${sourcedir}"
    else
        echo "skipping installation of ${sourcedir} to ${linkdir}"
    fi
}

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cautious_install "${HOME}/.zshrc" "${DIR}/zsh/.zshrc"
cautious_install "${HOME}/.zshenv" "${DIR}/zsh/.zshenv"
cautious_install "${HOME}/.i3" "${DIR}/.i3"
cautious_install "${HOME}/.i3status.conf" "${DIR}/.i3status.conf"
cautious_install "${HOME}/.xinitrc" "${DIR}/.xinitrc"
cautious_install "${HOME}/.Xmodmap" "${DIR}/.Xmodmap"
cautious_install "${HOME}/.Xresources" "${DIR}/.Xresources"
cautious_install "${HOME}/.gdbinit" "${DIR}/.gdbinit"
