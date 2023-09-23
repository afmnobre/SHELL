#!/usr/bin/env bash
#
#
#VARIAVEIS
nome="debugger"
versao="1.2-Beta"
dir_home="/home/${USER}/"

#CONFIGURALÇÃO DO USUARIO>
debug="1" # 0 desligado | 1 ligado


#FUNCOES
function debug_ativado(){
    if [[ "$debug" -eq "1" ]]; then
        echo -e "\n++++++++++++++++++++++++++DEBUG ATIVADO+++++++++++++++++++++++++++++\n"
        set -x
    fi
}
function debug_desativado(){
    if [[ "$debug" -eq "1" ]]; then
        set +x
        echo -e "\n+++++++++++++++++++++++DEBUG DESATIVADO+++++++++++++++++++++++++++++\n"
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
