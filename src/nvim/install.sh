#!/bin/sh
set -e

echo "Activating feature 'Neovim'"

source ./library_scripts.sh

ensure_nanolayer nanolayer_location "v0.4.39"

$nanolayer_location install apt --ppas ppa:neovim-ppa/unstable neovim \
  && mkdir -p $_CONTAINER_USER_HOME/.config/nvim $_CONTAINER_USER_HOME/.local/share/nvim \
  && chown -R $_CONTAINER_USER:$_CONTAINER_USER $_CONTAINER_USER_HOME/.config $_CONTAINER_USER_HOME/.local
