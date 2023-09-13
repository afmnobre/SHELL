#!/usr/bin/env bash
#
#
#
# Programa para retornar o MEU IP PUBLICO.
#
#
# ---------------------------------------
#
# Variavel do Programa ------------------

servidor1="icanhazip.com"
servidor2="ifconfig.co"

# Testes Iniciais -----------------------

echo -e "\n------------------------------------------\n"

echo "Teste Inicial, Verificando se possui Internet: "

if ! wget -q --spider www.google.com.br;
then
        echo "Necessita de Internet"
        exit 1
else
        echo "Internet OK"
fi

#------------------------------------------
#
# Execução do programa para retornar IP
echo -e "\n------------------------------------------\n"

exec_=$(if ! curl -s "$servidor1"; then curl -s "$servidor2"; fi)

echo "O Seu IP PUBLICO é $exec_"
