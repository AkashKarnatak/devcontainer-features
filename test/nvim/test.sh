#!/bin/bash

set -e

source dev-container-features-test-lib

check "nvim should be installed" nvim --version

reportResults
