#!/bin/bash

set -e

source dev-container-features-test-lib

check "dotfiles should exist" ls ~/.bashrc ~/.bash_aliases ~/.inputrc ~/.tmux.conf

reportResults
