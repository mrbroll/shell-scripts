#!/usr/bin/env bash

if [ $# -lt 1 ]; then
    echo you need to provide an argument
    exit 1
fi

case $1 in
    show )
        defaults write com.apple.finder AppleShowAllFiles TRUE
        ;;
    hide )
        defaults write com.apple.finder AppleShowAllFiles FALSE
        ;;
esac

killall Finder
