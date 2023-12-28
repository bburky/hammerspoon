#!/bin/bash
# Prepare GitHub Actions environment for testing

set -eu
set -o pipefail

export IS_CI=1

# Remove the pre-installed Cocoapods binary
rm /usr/local/bin/pod

# We can't even installdeps without greadlink existing, so grab that first
brew install coreutils

# Install build dependencies
./scripts/build.sh installdeps

# Install additional CI dependencies
gem install trainer
brew install gpg
