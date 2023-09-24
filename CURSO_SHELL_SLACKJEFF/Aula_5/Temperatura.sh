#!/usr/bin/env bash
#
#
#
# Verificando a Temperarura pela CIDADE
#
#
# Verificações do Sistema:
#

# Verifica se vc tem o CURL instalado.
[[ $(type -p curl) ]] || { echo  "Você precisa Instalar o CURL"; exit 1 ;}


# Verifica se vc tem Internet.
if ! wget -q --spider www.google.com.br; then echo "Você esta sem Internet"; fi


#
# Site com parametros do wttr.in = https://wttr.in/:help

echo -e "\n---------------------------------------------------------------------\n"

read -p "Digite o nome da cidade que precisa averiguar a temperatura: " cidade

curl "wttr.in/$cidade?0"

