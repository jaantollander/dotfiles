#!/usr/bin/env sh
mkdir -p "$XDG_CONFIG_HOME/brightnessctl"

mkdir -p "$XDG_CONFIG_HOME/i3/include"
ln -sf "$DOTMODULE/brightnessctl/config/i3.conf" "$XDG_CONFIG_HOME/i3/include/brightnessctl.conf"
