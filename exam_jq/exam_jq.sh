#!/bin/bash

echo "1. Énoncé de la question 1"
cat people.json | jq '.[] | {name, nombre_attribut: length}' | head -n 12
echo "Commande : <cat people.json | jq '.[] | {name, nombre_attribut: length}' | head -n 12>"
echo -e "\n---------------------------------\n"



echo "2. Énoncé de la question 2"
echo "Commande : cat people.json | jq 'group_by(.birth_year)[] | {birth_year: .[0].birth_year, count: length}' | tail -4"
echo "Réponse : Il y a 42 valeurs unknown"
echo -e "\n---------------------------------\n"


echo "3. Énoncé de la question 3"
echo "Commande : cat people.json | jq '.[] | {created: (.created | sub("\\.[0-9]+Z$"; "Z") | fromdateiso8601 | strftime("%Y-%m-%d")), name}' | head -10"
echo -e "\n---------------------------------\n"


echo "4. Énoncé de la question 4"
echo "Commande : <commande pour répondre>"
echo "Réponse : réponse de la question n si demandé"
echo -e "\n---------------------------------\n"


echo "n. Énoncé de la question n"
<commande pour répondre>
echo "Commande : <commande pour répondre>"
echo "Réponse : réponse de la question n si demandé"
echo -e "\n---------------------------------\n"