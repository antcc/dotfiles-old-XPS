#!/bin/zsh
# List installed packages & AUR and overwrite lists in 
.dotfiles/arch/packages

pacman -Q > ~/.dotfiles/arch/packages/pacman_list.txt
pacman -Qm > ~/.dotfiles/arch/packages/aur_list.txt
