#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

PM="yay"
# TODO: do we want noconfirm or not?
INSTALL="-Sy --noconfirm"

# install package manager wrapper
sudo pacman ${INSTALL} "${PM}"

${PM} ${INSTALL} npm
echo "installed npm"

bash ${DIR}/configure_devel_js.sh

npm i -g npm
npm i -g typescript typescript-language-server
npm i -g tern typescript-formatter
echo "installed JS/TS development tools"
