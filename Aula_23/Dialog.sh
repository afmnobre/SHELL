#!/usr/bin/env bash
#
#
#
dialog --title "INICIO"                      \
       --msgbox "Iniciando Programa..."      \
       0 0
#Sempre repetindo essa tela para não sair caso algo seja selecionado.
while true; do
    #colocando o resultado da seleção da tela abaixo na STTRING menu.
    menu=$(
        dialog --stdout                      \
            --title  "MENU"                  \
            --help-button                    \
            --menu   "Selecione"             \
            0 0 0                            \
            "Internet" "Usando o Opera"      \
            "Terminal" "usando o Urxvt"
    )

    status="$?"
    #O Estatus de saida do CTRL + C é igual a 1 e o de AJUDA é igual a 2.
    #Nos programas estou enviando as mensagens de erro para o DEV/NULL para não serem mostradas.
    if [[ "$status" = "1" ]]; then
         dialog --sleep 2 --msgbox "Saindo do Sistema." 0 0
         break
    elif [[ "$status" = "2" ]]; then
         dialog --msgbox "Ajuda do Sistema." 0 0
    elif [[ "$menu" = "Internet" ]]; then
        opera 1> /dev/null 2>&1
    elif [[ "$menu" = "Terminal" ]]; then
        urxvt 1> /dev/null 2>&1
    fi
done




