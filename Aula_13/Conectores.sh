#!/usr/bin/env bash
#
#
#REDIRECIONANDO A SAIDA DE ERROS 2> PARA A SAIDA PADRÃO >
echo -e "\n# REDIRECIONANDO A SAIDA DE ERROS 2> PARA A SAIDA PADRÃO 1>\n"

echo "ls /homemme/ > /dev/null 2>&1"

echo -e "\n# REDIRECIONANDO A SAIDA PADRÃO 1> PARA A SAIDA DE ERROS 2>\n"

echo "ls /homemme/ > /dev/null 1>&2"


echo -e "\n# FECHANDO AS SAIDAS DE ERRO E DE REDIRECIONAMENTO.\n"

echo "if ! ls /hommme >&- 2>&-; then"
echo "    echo \"ERRO ENCONTRADO...\""
echo  -e "fi\n"

if ! ls /hommme >&- 2>&-; then
    echo "ERRO ENCONTRADO..."
fi

