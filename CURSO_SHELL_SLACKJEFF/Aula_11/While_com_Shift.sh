#!/usr/bin/env bash
#
    case $1 in
        ligar)
            echo "Cafeteira Ligada! e posição \$1 é $1"
            shift
            [[ "$1" = "aumentar" ]] && echo "Aumentando o FLUXO... e posição \$1 agora é $1"
        ;;
        *) echo "Cafeteira Desligada!";;
    esac

