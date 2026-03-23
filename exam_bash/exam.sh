#!/usr/bin/bash
tableau_cartes_graphiques=("rtx3060" "rtx3070" "rtx3080" "rtx3090" "rx6700")

url="http://0.0.0.0:5000/" 

echo "$(date)"
for i in ${tableau_cartes_graphiques[*]}
do
nombre=$(curl "$url$i")
echo "rx$i: $nombre"
done
