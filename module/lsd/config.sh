#!/usr/bin/env sh
mkdir -p "$XDG_CONFIG_HOME/lsd"
ln -sf "$DOTMODULE/lsd/config/config.yaml" "$XDG_CONFIG_HOME/lsd/config.yaml"

mkdir -p "$XDG_CONFIG_HOME/posix/interactive"
ln -sf "$DOTMODULE/lsd/config/@interactive.sh" "$XDG_CONFIG_HOME/posix/interactive/lsd.sh"
