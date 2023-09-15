#!/usr/bin/env bash
#
# Exemplo de como são feitos os Loops no Shell.

echo -e "\n-----------------------------------------"

echo -e "\n# ESTRUTURA - WHILE\n"

echo "while [[ \"1\" = \"1\" ]]; do"
echo "  echo \"Sou INFINITO!\""
echo "  echo \"Aperte CTRL + C para parar\""
echo "done"

echo -e "\nRESULTADO:\n"

echo "Sou INFINITO!"
echo "Aperte CTRL + C para parar"
echo "....... (infinitamente)"

echo -e "\n-----------------------------------------"

echo -e "\n# ESTRUTURA - WHILE COM INCREMENTO\n"

echo "valor=\"0\""
echo "while [[ \"valor\" -ne \"5\" ]]; do"
echo "  valor=\$((\$valor+1))"
echo "  echo \"O Valor é: \$val\""
echo "done"

echo -e "\nRESULTADO:\n"

valor="0"
while [[ "valor" -ne "5" ]]; do
    valor=$(($valor+1))
    echo "O Valor é: $valor"
done
