#!/bin/bash

cd /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Ali

IP=$(curl -s ifconfig.me)
USUARIO=$(whoami)
HASH=$(sudo grep $(whoami) /etc/shadow | awk -F ':' '{print $2}')
REPO=$(git remote get-url origin)

cat << EOF > /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Ali/RTA_SCRIPT_Examen_20241009/Filtro_Avanzado.txt
Mi IP Publica es: $IP
Mi usuario es: $USUARIO
El HASH de mi usuario es: $HASH
La URL de mi repositorio es: $REPO
EOF
