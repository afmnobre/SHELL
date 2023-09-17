#!/usr/bin/env bash

echo -e "\n-------------------------------------------------------------------\n"
echo -e "# CRIANDO MENU INTERATIVO COM O LOOP SELECT\n"
echo "select nome in \"jefferson\" \"francisco\" \"joao\" \"fernanda\"; do"
echo "  echo \"O nome mais bonito é: \$nome\""
echo "done"

echo -e "\n-------------------------------------------------------------------\n"

PS3="Selecione: " # Variavel para alterar o menu de selecionar do SELECT.
select nome in jefferson francisco joao fernanda maria sair; do
  case "$nome" in
      jefferson) echo "O $nome é trabalhador." ;;
      francisco) echo "O $nome é rapido e eficiente." ;;
      joao) echo "O $nome é lento mas faz." ;;
      fernanda) echo "O $nome ja foi uma boa pessoa" ;;
      maria) echo "A $nome é bonita" ;;
      sair) break ;;
      *) echo "Desculpas mas não conheço esse nome." ;;
  esac
done

echo -e "\n-------------------------------------------------------------------\n"

PS3="Selecione: " # Variavel para alterar o menu de selecionar do SELECT.
select numero in 1 2 3 4 5; do
  case $numero in
      1) echo "$numero é trabalhador." ;;
      2) echo "$numero é rapido e eficiente." ;;
      3) echo "$numero é lento mas faz." ;;
      4) echo "$numero ja foi uma boa pessoa" ;;
      5) echo "SAIR"; break ;;
      *) echo "Desculpas mas não conheço esse nome." ;;
  esac
done

echo -e "\n----------------------------------------------------------------"

PS3="Selecione: " # Variavel para alterar o menu de selecionar do SELECT.
select nome2 in "lucas" "fernanda" "matheus" "daniel" "sair"; do
  case "$REPLY" in
      lucas) echo "$REPLY é trabalhador." ;;
      fernanda) echo "$REPLY é rapido e eficiente." ;;
      matheus) echo "$REPLY é lento mas faz." ;;
      daniel) echo "$REPLY ja foi uma boa pessoa" ;;
      sair) echo "SAIR"; break ;;
      *) echo "Desculpas mas não conheço esse nome." ;;
  esac
done

echo -e "\n----------------------------------------------------------------"
