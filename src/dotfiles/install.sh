#!/bin/sh
set -e

echo "Copying dotfiles"

[ "$INCLUDEBASHRC" = "no" ] && rm -f ./dotfiles/.bashrc
cp -r ./dotfiles/. $_CONTAINER_USER_HOME/
chown -R $_CONTAINER_USER:$_CONTAINER_USER $_CONTAINER_USER_HOME
