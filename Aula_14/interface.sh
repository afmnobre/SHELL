#!/usr/bin/env bash

#vermelho="\033[31;1m"
#fecha="\033[m"
echo -e "\n\t DOS - Emulador de Windows"
while true; do
    read -p $'\033[31;1m> \033[m' entrada
    if [[ "$entrada" = "cls" ]]; then
        clear
    elif [[ "$entrada" = "vim" ]]; then
        vim
    elif [[ "$entrada" = "dir" ]]; then
        exa -la
    fi
done

