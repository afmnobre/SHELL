#!/usr/bin/env bash
#
#
carros=("Pálio" "Corsa" "Opala" "Chevette" "Mercedes" "Bmw" "Fusion" "Toyota")

echo -e "\n# CHAMANDO A LISTA COM @\n"
for lista in "${carros[@]}"; do
    echo "$lista"
done

echo -e "\n# CHAMANDO LISTA COM *\n"
for lista in "${carros[*]}"; do
    echo "$lista"
done

echo -e "\n# CHAMANDO LISTA COM @ e CASE interno no loop FOR\n"
for lista in "${carros[@]}"; do
    case $lista in
            Pálio) echo "O $lista é um carro nojento de velho!" ;;
            Corsa) echo "$lista é um carro economico." ;;
            Opala) echo "O $lista bebe 1 litro por metro que faz." ;;
            Chevette) echo "O $lista só serve pra jogar fora.";;
            Mercedes) echo "A unica $lista que andei era Onibus." ;;
            Bmw) echo "A $lista é um carro muito caro pra manter" ;;
            Fusion) echo "Meu sonho de consumo é um $lista" ;;
            Toyota) echo "Meu pai tem um $lista" ;;
            *) echo "CARRO NÂO ENCONTRADO." ;;
    esac
    #echo "$lista"
done

echo -e "\nMODIFICADORES:\n"
echo "  ! (EXCLAMAÇÃO)"
echo "  # (HASHTAG)"

echo -e "\n# CHAMANDO LISTA COM @ mas com !\n"

apelidos=(Jeffe Batata Fafa Bento Teu)

for i in "${!apelidos[@]}"; do
    echo "Vetor $i : ${apelidos[$i]}"
done

echo -e "\n# CHAMANDO LISTA COM # mas com @ ele retorna a quantidade de itens no array\n"

apelidos=(Jeffe Batata Fafa Bento Teu)

echo "A quantidade de itens no ARRAY apelidos é ${#apelidos[@]}";
