#!/bin/bash
mkdir -p $HOME/screenshots
mkdir -p $XDG_CONFIG_HOME/scrot
ln -sf $DOTFILES/scrot/config/i3.conf $XDG_CONFIG_HOME/scrot/i3.conf
