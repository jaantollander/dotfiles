# shellcheck shell=sh
# Start X11 if TTY is "tty1" and X is not started.
if test "$(tty)" = "/dev/tty1" && test ! "$(pidof -x startx)"; then
    exec startx "$XDG_CONFIG_HOME/X11/xinitrc.sh"
fi
