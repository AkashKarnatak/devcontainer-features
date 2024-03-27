#!/bin/bash
set -e

echo "Copying dotfiles"

[ "$INCLUDEBASHRC" = "no" ] && rm -f ./dotfiles/.bashrc
cp -rT ./dotfiles $_CONTAINER_USER_HOME/
chown -R $_CONTAINER_USER:$_CONTAINER_USER $_CONTAINER_USER_HOME
