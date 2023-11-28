#!/bin/bash

source $(dirname "$0")/installation_utils.sh

#############################################
# install neovim-related programs and packages
#############################################
${PM} ${INSTALL} neovim

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cautious_install "${HOME}/.config/nvim" "${DIR}/nvim"

