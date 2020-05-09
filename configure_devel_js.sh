#!/bin/bash

NPM_GLOBAL_DIR="~/.npm-global"

echo "adding a user npm global install path..."
mkdir -p "${HOME}/${NPM_GLOBAL_DIR}/bin"
npm config set prefix "${NPM_GLOBAL_DIR}"
echo "set user's npm global install path to ${NPM_GLOBAL_DIR}"
