#!/usr/bin/env sh
mkdir -p "$XDG_CONFIG_HOME/redshift"
ln -sf "$DOTMODULE/redshift/config/redshift.conf" "$XDG_CONFIG_HOME/redshift/redshift.conf"

mkdir -p "$XDG_CONFIG_HOME/i3/include"
ln -sf "$DOTMODULE/redshift/config/i3.conf" "$XDG_CONFIG_HOME/i3/include/redshift.conf"
