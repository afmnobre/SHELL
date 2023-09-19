#!/usr/bin/env bash
#
# TODOS OS PROCESSOS DE TODAS AS SESSOES DO USUARIO.
COMANDO=$(who | sort | grep -P $USER | ps ax | sed 's/^[ \t]*//' | cut -d ' ' -f 1)

# TODAS AS SESSOES DO USUARIO
SESSOES=$(who | sort | grep -P $USER | cut -d ' ' -f 2)

# SESSAO ATUAL DO USUARIO LOGADO
SESSAO_ATUAL=$(who w $USER | cut -d ' ' -f 2)

echo -e "\nA Sessão atual é: $SESSAO_ATUAL\n"

for sessao in $SESSOES; do
        #echo -e "\nA sessao é: $sessao e a atual é $SESSAO_ATUAL\n"
        if [ ! "$sessao" = "$SESSAO_ATUAL" ]; then
                read -p "Matar a sessao: $sessao [s/n] " resposta
                if [ "$resposta" = "s" ]; then
                        echo "MATANDO $sessao"
                        pkill -t $sessao # Só pode ser feito como ROOT.
                else
                        echo "PROXIMA..."
                fi
        fi
done
