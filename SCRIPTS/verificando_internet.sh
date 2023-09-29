#!/usr/bin/env bash
#
#

read -p "Digite o endereço do site: " site

while true; do
    [[ $(ping "$site" -c 4 2>/dev/null) ]] && { sleep 2; echo -e "\033[32;1m O SITE ESTA NO AR! \033[m"; } || { sleep 2; echo -e "\033[31;1m O SITE ESTA FORA DO AR! \033[m" ;}
done

