#!/usr/bin/env sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cat $DIR/.brew_list | xargs brew install
brew tap adoptopenjdk/openjdk
cat $DIR/.brew_cask_list | xargs brew cask install
