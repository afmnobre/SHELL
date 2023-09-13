#!/usr/bin/env bash
#
# SISTEMA DE BACKUP COM PARAMETROS.
#
# VARIAVEIS DO SISTEMA.
origem=$2
destino=$3

# INICIO DO SISTEMA.
case $1 in
    --b | --backup)
        # LIMPANDO A TELA
        clear
        # VERIFICAÇÃO SE OS DIRETORIOS SÃO EXISTENTES.
        [[ -d $origem ]] || { echo "SELECIONE UM CAMINHO DE ORIGEM VÁLIDO!"; exit 1;}
        [[ -d $destino ]] || { echo "SELECIONE UM CAMINHO DE DESTINO VÁLIDO"; exit 1;}
        # LISTANDO OS ARQUIVOS QUE SERÃO PARTE DO BACKUP.
        echo -e "\n########################################################"
        echo -e "#  Os Seguintes Arquivos serão incorporados ao BACKUP: #"
        echo -e "########################################################\n"
        exa -a "$origem"
        # VERIFICANDO SE EXISTE O DIRETORIO DE BACKUP E CRIANDO.
        echo -e "\n########################################################\n"
        [[ -d "$destino/BACKUP" ]] && { echo "O DIRETORIO DE BACKUP EXISTE! " ;} || { echo "CRIANDO DIRETORIO DE BACKUP" ; mkdir "$destino/BACKUP" ;}
        echo -e "\n########################################################"
        # CRIANDO O ARQUIVO DE BACKUP.
        echo -e "#  O Backup foi feito com sucesso!                     #"
        echo -e "########################################################\n"
        [[ $(tar -cvf "$destino/BACKUP/BACKUP.tar" "$origem") ]] && { echo "O BACKUP ESTA FEITO!" ;}
    ;;
    --h |--help)

        clear
        echo -e "\n############## MANUAL #########################\n"
        echo "1) --backup \\CAMINHO_ORIGEM \\CAMINHO_DESTINO"
        echo "2) --b \\CAMINHO_ORIGEM \\CAMINHO_DESTINO"
        echo -e "\n###############################################"
    ;;
    *)
        echo -e "\n#################################################"
        echo -e "########## Selecione uma opção Válida! ##########"
        echo -e "#################################################"
    ;;
esac
