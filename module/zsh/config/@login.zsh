# If TTY is "tty1" and i3 is not started, start X11.
if [[ "$(tty)" = "/dev/tty1" && -z $(pgrep i3) ]]; then
    exec startx "$XDG_CONFIG_HOME/X11/xinitrc.sh"
fi

