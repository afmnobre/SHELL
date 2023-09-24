#!/usr/bin/env bash
#
#
#

read -p "Digite a URL que você necessita verificar a disponibilidade:   " url

wget -q --spider "$url" && echo "Site Ativo" || echo "Site Inativo"
