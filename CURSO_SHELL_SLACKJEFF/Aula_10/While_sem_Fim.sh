#!/usr/bin/env bash
#
while true; do
    read -p "Qual o seu Nome? " nome
    [[ -z "$nome" ]] && echo "Entre com seu nome." || break
done

echo "CONTINUANDO porque fez o BREAK dentro do WHILE"
