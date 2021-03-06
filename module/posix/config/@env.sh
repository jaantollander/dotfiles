# shellcheck shell=sh
# Source environment variables
DIR=$HOME/.config/posix/env
if test -d "$DIR"; then
    for f in "$DIR"/*.sh; do
        test -r "$f" && . "$f"
    done
    unset f
fi
unset DIR
