#!/usr/bin/env bash
#
#
echo "Testando 3 comando pois o PIPE faz vc EXECUTAR mais de um comando ao mesmo tempo."

echo "TOMATE ABACAXI" | cut -d ' ' -f 2 | grep "TOMATE"
echo "TOMATE ABACAXI" | cut -d ' ' -f 2 | grep "ABACAXI"


echo -e "\n# VENDO OS DOIS ULTIMOS CAMPOS DO ARQUIVO /etc/passwd"
cat /etc/passwd | cut -d ":" -f '6-7'

echo -e "\nVENDO TODAS AS LINHAS QUE TERMINAM COM BASH NO ARQUIVO /etc/passwd"
cat /etc/passwd | grep -E "bash$"

echo -e "\nVENDO TODAS AS LINHAS QUE TERMINAM COM nologin NO ARQUIVO /etc/passwd"
cat /etc/passwd | cut -d ":" -f '6-7' | grep -E "nologin$"
