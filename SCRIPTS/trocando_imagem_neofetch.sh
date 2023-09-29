#!/usr/bin/env bash

# VARIAVEIS DO SISTEMA.
TERMINAL=$TERM
NUMERO=$(($RANDOM % 7))
NUMERO=$((NUMERO + 1))
# TERMINAIS tmux-256color e rxvt-unicode-256color.
TMUX="tmux-256color"
URXVT="rxvt-unicode-256color"


if [[ $TERM == $TMUX ]] || [[ $TERM == $URXVT ]] ; then
    neofetch --w3m ~/Pictures/Wallpapers/Neofetch/vagabond_${NUMERO}.png
else
    neofetch
fi
