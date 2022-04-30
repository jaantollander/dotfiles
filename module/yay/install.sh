#!/usr/bin/env sh
cd "$(mktemp -d)" || exit 1
git clone https://aur.archlinux.org/yay.git .
makepkg -s
sudo pacman -U yay-*.pkg.tar.zst
cd - || exit 1
