#!/usr/bin/env bash
#
#
arquivo_log="/tmp/log.txt"


#VERIFICANDO SE EXISTE O ARQUIVO se nao ELE CRIA
[[ ! -e "$arquivo_log" ]] && > "$arquivo_log"

if ls /homeemmem > /dev/null 2>> "$arquivo_log"; then
    echo "O Comando LS FUNCINOU"
else
    echo "----- $(date +%H:%M)----" >> "$arquivo_log"
    echo "Erro, verifique em $arquivo_log para identificar o problema."
fi


