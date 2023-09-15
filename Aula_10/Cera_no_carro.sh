#!/usr/bin/env bash
#
#PASSANDO CERA NO CARRO!
#
while :; do
    read -p "Sujeira saiu? [sim/não] " sujeira
    # BREAK para mas continua com o resto do PROGRAMA.
    [[ "$sujeira" = "sim" ]] && break || echo -e "\nLIMPANDO CARRO!\n"
done

echo -e "
________________________
| O carro esta LIMPO!. |
------------------------
"
