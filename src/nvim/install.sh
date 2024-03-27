#!/bin/sh
set -e

echo "Activating feature 'Neovim'"

curl -sfL https://github.com/devcontainers-contrib/nanolayer/releases/download/v0.4.0/nanolayer-x86_64-unknown-linux-gnu.tgz | tar fxvz - \
  && ./nanolayer install apt --ppas ppa:neovim-ppa/unstable neovim \
  && rm ./nanolayer \
  && mkdir -p $_CONTAINER_USER_HOME/.config/nvim $_CONTAINER_USER_HOME/.local/share/nvim \
  && chown -R $_CONTAINER_USER:$_CONTAINER_USER $_CONTAINER_USER_HOME/.config $_CONTAINER_USER_HOME/.local
