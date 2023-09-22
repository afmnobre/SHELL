#!/usr/bin/env bash
# CSV - COMMOM SEPARATOR VALUE
# ID > NUMERICO E UNICO
# Agenda telefinica que puxa informação de um bancod e dados CSV.
# 1) Vamos armazenar o usuario e informações no arquivo CSV
#========= VARIAVEIS DO SISTEMA===========#
banco_de_dados="banco-de-dados.txt"
vermelho="\E[31;1m"
fecha_cor="\E[m"
#========= TESTES INICIAIS ===============#
#Se o arquivo não existir criar um novo.
[[ ! -e "$banco_de_dados" ]] && {
cat > "$banco_de_dados" <<EOF
ID:CPF:NOME:DDD:TELEFONE:CIDADE
EOF
}
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
        #RETIRANDO PONTOS E TRAÇOS DO CPF.
        #CPF_TRATADO=$(echo ${dados[2]} | sed 's/\.//g' | sed 's/\-//g')
        #echo "O CPF SEM PONTOS é $CPF_TRATADO"
        if ! grep -qo "${dados[2]}" "$banco_de_dados"; then
            #RETIRANDO CARACTERES ESPECIAIS DO CAMPO CPF DO banco_de_dados.txt
            dados[2]=$(sed 's/\.//g' <<< "${dados[2]}")
            dados[2]=$(sed 's/\-//g' <<< "${dados[2]}")
            #CRIANDO O CONTADOR DA PAGINA NO ARQUIVO banco_de_dados.txt
            ID=$(($(wc -l < $banco_de_dados)+1))
            #ENVIANDOS OS DADOS PARA O ARQUIVO DE TEXTO.
            echo "$ID:${dados[2]}:${dados[1]}:${dados[3]}:${dados[4]}:${dados[5]}" | tr 'A-Z' 'a-z' >> "$banco_de_dados"
            bat "$banco_de_dados"
        else
            sleep 2s
            echo "O CPF: ${dados[2]} ja esta cadastrado! Saindo..."
            bat "$banco_de_dados"
            exit 1
        fi
}

function _buscar(){
#MANEIRA 1 de RESOLVER A BUSCA
#    lista=("ID" "CPF" "NOME" "DDD" "TELEFONE" "CIDADE")
#    if grep -qwio "$parametro" "$banco_de_dados"; then
#            i="1"
#            for dados in "${lista[@]}"; do
#                echo "${dados}: $(grep "$parametro" "$banco_de_dados" | cut -d ":" -f "$i" ) "
#                ((i++))
#            done
#    else
#        echo "Contato não cadastrado!"
#    fi
#MANEIRA 2 de RESOLVER A BUSCA
    if grep -qwio "$1" "$banco_de_dados"; then
        for ((i="2"; i <= 7; i++)); do
            for dados in "CPF" "NOME" "DDD" "TELEFONE" "CIDADE"; do
                dados[$i]="$(grep "$1" "$banco_de_dados" | cut -d ':' -f "$i")"
            done
        done
        i=2
        for label in "CPF" "NOME" "DDD" "TELEFONE" "CIDADE"; do
            echo "$label: ${dados[$i]} "
            let i++
        done
    else
        echo "Contato não cadastrado!"
        exit 1
    fi
}

# MENU DE ENTRADA
case $1 in
    -a | --adicionar) shift;   _adicionar ;;
    -b | --buscar)    shift; _buscar "$@" ;;
    -i | --imprimir)  shift;    _imprimir ;;

esac
