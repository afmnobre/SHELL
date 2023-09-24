#!/usr/bin/env bash
#
#
# CHAMADA DO ARQUIVO DE CONFIGURAÇÃO SENHA.conf onde tem as variaveis e valores de acesso.
source SENHA.conf


# FUNÇÕES DO SISTEMA
# --- FUNÇÃO PARA LOGAR NO SISTEMA
function _login(){
    echo -e "\n+--------------------------+"
    echo -e "+       PROGRAMA MENU      +"
    echo -e "+--------------------------+"
    read -p       "Login:    " _login
    read -t 5 -sp "Password: " _pass
    read -sp $'\nCPF:      ' _cpf

    if [[ "$_login" = "$USUARIO" ]] && [[ "$_pass" -eq "$SENHA" ]] && [[ "$_cpf" = "$CPF" ]]; then
        echo -e "\n+--------------------------+"
        echo -e "+    LOGADO COM SUCESSO!   +"
        echo -e "+--------------------------+"
        sleep 2
        clear
    else
        echo -e "\n+-------------------------+"
        echo -e "+   ACESSO INVÁLIDO!      +"
        echo -e "+-------------------------+"
        exit 1
    fi
    # INICIO DO CODIGO DO MENU
    echo "+-------- BEM VINDO $USUARIO --------+"
    echo "+                                 +"
    echo "+    1) Abrir Terminal            +"
    echo "+    2) Abrir Gedit               +"
    echo "+    3) Abrir Opera               +"
    echo "+    4) Abrir Audacious           +"
    echo "+    5) Sair                      +"
    echo "+                                 +"
    echo "+---------------------------------+"
    echo -e "+---------------------------------+"
    read -p "Selecione uma Opção: " opcao
    case "$opcao" in
        1)
            [[ $(type -P urxvt) ]] || { echo "O Urxvt não existe no sistema"; exit 1 ;}
            urxvt &
        ;;
        2)
            [[ $(type -P gedit) ]] || { echo "O Gedit não existe no sistema"; exit 1 ;}
            gedit &
        ;;
        3)
            [[ $(type -P opera) ]] || { echo "O Opera não existe no sistema"; exit 1 ;}
            opera &
        ;;
        4)
            [[ $(type -P audacious) ]] || { echo "O Audacious não existe no sistema"; exit 1 ;}
            audacious &
        ;;
        5) exit 0 ;;
        *) echo "Selecione uma opção válida!"; exit 1 ;;
    esac
}
# --- FUNÇÃO DE AJUDA
function _help(){
        echo -e "\n+-------------------------+"
        echo -e "+   MANUAL DO MENU        +"
        echo -e "+-------------------------+"
        echo "--h ou --help  : AJUDA"
        echo "--l ou --login : ACESSAR"
}
# INICIO DO PROGRAMA POR PARAMETROS
case "$1" in
    --l | --login)
        _login #CHAMANDO A FUNÇÃO _login
    ;;
    --h | --help)
        _help #CHAMANDO A FUNÇÃO _help
    ;;
    *)
        echo -e "\nSELECIONE UMA OPÇÃO VÁLIDA!";
        _help
    ;;
esac
