#!/bin/bash

function prefixwith() {
    # TODO: make this flush stdout of script before script calls 'read'
    local prefix="${1}"
    shift
    "$@" > >(sed -u "s/^/${prefix}: /" </dev/stdin) 2>&1
}

function run() {
    local prefix="[DOT]"
    prefixwith "${prefix}" "$@"
}

run echo "installing packages..."
./install_various.sh
run echo "done installing packages"

run echo "installing dotfile symlinks to ${HOME}..."
./install_dotfiles.sh
run echo "done installing dotfile symlinks to ${HOME}"

run echo "installing git and related tools..."
./install_git.sh
run echo "configuring git..."
./configure_git.sh
run echo "done installing git"

run echo "installing JS/TS development tools..."
./install_devel_js.sh
run echo "configuring npm global install..."
./configure_devel_js.sh
run echo "done installing JS/TS development tools"

# run echo "installing spacemacs..."
# ./install_spacemacs.sh
# run echo "configuring spacemacs..."
# ./configure_spacemacs.sh
# run echo "done installing spacemacs"

run echo "installing neovim..."
./install_neovim.sh
run echo "done installing neovim"

run echo "finished installing all dotifles"
