#!/usr/bin/env bash
#

#VARIAVEIS DO SISTEMA
clear
echo -e "\n--- DIGITE 10 NUMEROS PARA VERIFICAÇÂO DE VALORES --\n"

_guardar_maior="0"
_guardar_menor="0"
_numero="1"

while [[ "$_numero" -le  "10" ]]; do
    read -p "$_numero) Digite um Numero: " verificar_numero


    [[ "$_numero" -eq "1" ]] && _guardar_menor="$verificar_numero"
    [[ "$verificar_numero" -lt "$_guardar_menor" ]] && _guardar_menor="$verificar_numero"
    [[ "$verificar_numero" -gt "$_guardar_maior" ]] && _guardar_maior="$verificar_numero"
    let _numero++
done

echo -e "\nO Maior Numero é: $_guardar_maior e o Menor Numero é: $_guardar_menor."


