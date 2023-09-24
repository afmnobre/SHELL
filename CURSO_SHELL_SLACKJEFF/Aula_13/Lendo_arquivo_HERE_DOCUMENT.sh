#!/usr/bin/env bash
#
#here documents
#
#
#ALIMENTA O COMANDO CAT COM O << E DEPOIS ENVIA O RESULTADO CRIANDO O CARQUIVO arquivo.txt até
#encontrar a palavra EOF pelo HERE DOCUMENTS.

cat >> "arquivo.txt" <<EOF
Aqui é o manual de ajuda...
faça isso e aquilo que vai dar tudo certo!
\$home
EOF


