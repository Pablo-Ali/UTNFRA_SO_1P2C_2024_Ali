#!/bin/bash

grep -i memtotal /proc/meminfo > /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Ali/RTA_SCRIPT_Examen_20241009/Filtro_Basico.txt

sudo dmidecode -t chassis | grep -i -E "chassis|manufacturer" >> /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Ali/RTA_SCRIPT_Examen_20241009/Filtro_Basico.txt


