#!/usr/bin/env bash
#
#


while sleep 1s; do
    echo -e "\n------------------------------------------------------\n"
    echo -e "Numero de PID do Processo atual ou do próprio Programa: $$ \n"
    echo -e "Numero do PID do último job em seguundo Plano: $! \n"
    echo -e "Último argumento do último comando executado: $_ \n"
    echo -e "Mostra o codigo de retorno do último comando executado: $? \n"
done



echo -e "Numero de PID do Processo atual ou do próprio Programa: $$ \n"
echo -e "Numero do PID do último job em seguundo Plano: $! \n"
echo -e "Último argumento do último comando executado: $_ \n"
echo -e "Mostra o codigo de retorno do último comando executado: $? \n"
