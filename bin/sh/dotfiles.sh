#!/usr/bin/bash

git --git-dir="${DOTFILE_PATH}/.git" -C "${DOTFILE_PATH}" "$@"
