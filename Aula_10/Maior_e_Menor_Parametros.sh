#!/usr/bin/env bash
#
clear
echo -e "\n--- DIGITE 10 NUMEROS PARA VERIFICAÇÂO DE VALORES --\n"

_numero="0"

while [[ "$_numero" -lt  "10" ]]; do
    _parametros=("$@")
    echo "A posição do PARAMETRO é $_numero e o valor do PARAMETRO é: ${_parametros[$_numero]}."
    #verifica se a variavel _guardar_menor é NULA pois na primeira posição a variavel NULA é menor que tudo.
    [[ -z "$_guardar_menor" || "${_parametros[$_numero]}" -lt "$_guardar_menor" ]] && _guardar_menor="${_parametros[$_numero]}"
    [[ "${_parametros[$_numero]}" -gt "$_guardar_maior" ]] && _guardar_maior="${_parametros[$_numero]}"
    let _numero++
done

echo -e "\nO Maior Numero é: $_guardar_maior e o Menor Numero é: $_guardar_menor."




# O uso de -z para verificar se _guardar_menor é nulo na primeira iteração é uma solução adequada para inicializar a variável corretamente.
