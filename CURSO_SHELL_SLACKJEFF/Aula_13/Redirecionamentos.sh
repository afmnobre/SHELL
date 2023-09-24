#!/usr/bin/env bash
#
#
echo -e "\n# REDIRECIONAMENTO DE SAIDA DO COMANDO LS\n"
echo -e "Ele cria o arquivo automaticamente e o arquivo de resultado é feito linha a linha\n"
echo "EXEMPLO 1:"
echo "ls > saida.txt"

echo -e "\nEXEMPLO 2: O >> cria o arquivo e se houver não apaga o anterior mas atualiza inserindo."
echo "ls >> saida.txt "

echo -e "\n# REDIRECIONAMENTO DE SAIDA DE STATUS DO COMANDO LS\n"
echo "Esse comando redireciona o status 0 ou 1-255 para o arquivo desejado."
echo -e "ls /home 2> Erro.txt\n"

echo "Esse comando redireciona o status 0 ou 1-255 para o arquivo desejado e não apaga o anterior."
echo "ls /home 2>> Erro.txt"

echo -e "\n# REDIRECIONAMENTO DE SAIDA DO COMANDO E DE ERROS PARA O BURACO NEGRO /DEV/NULL"

echo "type -P dialog > /dev/null 2> /dev/null"
