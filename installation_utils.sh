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

PM="yay"
INSTALL="-Sy --noconfirm"

