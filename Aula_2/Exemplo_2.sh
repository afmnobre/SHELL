#!/usr/bin/env bash
#
#
#

echo "Qual diretório você quer entrar?"
read -e diretorio

cd "$diretorio"
echo -e "------------------------------------------------------\n"
echo "Você esta em: $(pwd)"
echo -e "------------------------------------------------------\n"
echo "Dentro do diretorio $diretorio tem os seguintes arquivos:"
exa "$diretorio"

