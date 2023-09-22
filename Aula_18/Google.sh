#!/usr/bin/env bash
#
#
if [[  "$1" = "-e" ]]; then
    shift
    pesquisa="$@"
    pesquisa="${pesquisa// /%20}"
    opera \
        http://www.google.com/search?q="$pesquisa"
else
    echo "DIGITE a opção -q <termo de busca>"
fi
