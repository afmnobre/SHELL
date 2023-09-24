#!/usr/bin/env bash
#
#
# CSV - COMMOM SEPARATOR VALUE
# ID > NUMERICO E UNICO
# Agenda telefinica que puxa informação de um bancod e dados CSV.
# 1) Vamos armazenar o usuario e informações no arquivo CSV
#
#
#========= VARIAVEIS DO SISTEMA===========#
banco_de_dados="banco-de-dados.txt"
#========= TESTES INICIAIS ===============#
#Se o arquivo não existir criar um novo.
[[ ! -e "$banco_de_dados" ]] && > "$banco_de_dados" && echo "NOME:CPF:DDD:TELEFONE:CIDADE" >> "$banco_de_dados"
#Não pode ser usuario ROOT.
(($UID==0)) && { echo "Não pode utilizar usuario ROOT."; exit 1 ;}
#=========FUNÇÕES=========================#
# 1) Adicionando USUARIOS E INFORMAÇÕES.
function _adicionar(){
    lista=("Nome" "CPF" "DDD" "Telefone" "Cidade")
    i=1
    for dados in "${lista[@]}"; do
        while [[ -z "${dados[i]}" ]]; do
            read -p "${dados}: " dados[$i]
        done
        ((i++))
    done

        if ! grep -q "${dados[2]}" "$banco_de_dados"; then
            #CRIANDO O CONTADOR DA PAGINA NO ARQUIVO banco_de_dados.txt
            ID=$(wc -l $banco_de_dados | cut -d ' ' -f 1 )
            chave=$(("$ID"+"1"))
            #ENVIANDOS OS DADOS PARA O ARQUIVO DE TEXTO.
            echo "$chave:${dados[1]}:${dados[2]}:${dados[3]}:${dados[4]}:${dados[5]}" | tr 'A-Z' 'a-z' >> "$banco_de_dados"
        else
            sleep 2s
            echo "O CPF: ${dados[2]} ja esta cadastrado! Saindo..."
            exit 1
        fi
}




# MENU DE ENTRADA
case $1 in
    -a | --adicionar) _adicionar ;;


esac
