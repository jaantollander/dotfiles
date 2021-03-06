#!/usr/bin/env sh
mkdir -p "$HOME/screenshots"
mkdir -p "$XDG_CONFIG_HOME/maim"
ln -sf "$DOTMODULE/maim/config/sreenshot.sh" "$XDG_CONFIG_HOME/maim/screenshot.sh"

mkdir -p "$XDG_CONFIG_HOME/i3/include"
ln -sf "$DOTMODULE/maim/config/i3.conf" "$XDG_CONFIG_HOME/i3/include/maim.conf"
