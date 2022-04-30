#!/usr/bin/env sh
mkdir -p "$XDG_CONFIG_HOME/shell/interactive"
ln -sf "$DOTMODULE/aalto/config/@interactive.sh" "$XDG_CONFIG_HOME/shell/interactive/aalto.sh"

mkdir -p "$HOME/.ssh/config.d"
ln -sf "$DOTMODULE/aalto/config/ssh" "$HOME/.ssh/config.d/aalto"
