#!/usr/bin/env bash
#
#
#
#
echo -e "\n# COMANDO cat banco-de-dados.txt"
cat banco-de-dados.txt

echo -e "\n# COMANDO sed para substituir o caracter - por nada."
sed 's/-//g' banco-de-dados.txt

echo -e "\n# COMANDO sed para substituir o caracter . por nada."
sed 's/\.//g' banco-de-dados.txt


