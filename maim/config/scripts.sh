#!/bin/bash
bindsym Print exec \
    mkdir -p $HOME/screenshot && \ 
    maim $HOME/screenshot/$(date -Iseconds).png && \ 
    notify-send -t 1000 "screenshot saved"
