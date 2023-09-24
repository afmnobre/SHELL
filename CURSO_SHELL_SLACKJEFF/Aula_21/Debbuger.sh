#!/usr/bin/env bash
#
#VARIAVEIS
nome="debugger"
versao="1.2-Beta"
dir_home="/home/${USER}/"

#CONFIGURALÇÃO DO USUARIO>
debug="1" # 0 desligado | 1 ligado

#CORES
vermelho="\033[031;1m"
fecha_cor="\033[m"

#FUNCOES
function debug_ativado(){
    if [[ "$debug" -eq "1" ]]; then
        echo -e "\n${vermelho}++++++++++++++++++++++++++DEBUG ATIVADO+++++++++++++++++++++++++++++\n"
        set -x
    fi
}
function debug_desativado(){
    if [[ "$debug" -eq "1" ]]; then
        set +x
        echo -e "\n+++++++++++++++++++++++DEBUG DESATIVADO+++++++++++++++++++++++++++++${fecha_cor}\n"
    fi
}

#TESTANDO A FUNÇÃO E CHAMANDO ELAS.
debug_ativado
for i in 1 2 3 4 5; do
    echo "Numero: ${i}"
done
debug_desativado

for i in a b c e e; do
    echo  "Letra: ${i}"
done

echo -e "\n===================================================================="
echo -e "\n#            VERIFICANDO SE AS VARIAVEIS ESTÃO VAZIAS              #"
debug_ativado
var1=""
var2=""
var3=""
#VERIFICANDO SE AS VARIAVEIS ESTÃO NULAS
for info in "$var1" "$var2" "$var3"; do
    if [[ -z "$info" ]]; then
        echo "A variavel $info ta nula"
    fi
done
debug_desativado

for i in 1 2 3 4 5; do
    echo  "Numero: ${i}"
done

