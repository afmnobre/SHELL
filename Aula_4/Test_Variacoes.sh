#!/usr/bin/env bash
#
#


echo -e "\n--------------------------------------------------------------------"
echo "Usando o TEST da maneira padrão: "
test " Rua Elis" = "Rua São Roque" && { echo "Igual"; } || { echo "Diferente"; }

echo -e "\n--------------------------------------------------------------------"

echo "Usando o TEST com alias:"

[ "Rua Elis" = "Rua São Roque" ] && { echo "Igual" ; } || { echo "Diferente"; }
[ "Rua Elis" = "Rua Elis" ] && { echo "Igual" ; } || { echo "Diferente"; }


echo -e "\n--------------------------------------------------------------------"

echo "Usando o TEST com alias com colchetes duplos:"

[[ "Rua Elis" = "Rua São Roque" ]] && { echo "Igual" ; } || { echo "Diferente"; }
[[ "Rua Elis" = "Rua Elis" ]] && { echo "Igual" ; } || { echo "Diferente"; }


