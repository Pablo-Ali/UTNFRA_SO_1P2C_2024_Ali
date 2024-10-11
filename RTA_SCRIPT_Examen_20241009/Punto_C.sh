#!/bin/bash

HASH=$(sudo grep $(whoami) /etc/shadow | awk -F ':' '{print $2}')

sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

sudo useradd -m -s /bin/bash -p $HASH -G p1c2_2024_gAlumno p1c2_2024_A1
sudo useradd -m -s /bin/bash -p $HASH -G p1c2_2024_gAlumno p1c2_2024_A2
sudo useradd -m -s /bin/bash -p $HASH -G p1c2_2024_gAlumno p1c2_2024_A3
sudo useradd -m -s /bin/bash -p $HASH -G p1c2_2024_gProfesores p1c2_2024_P1

sudo chown -R p1c2_2024_A1:p1c2_2024_gAlumno /Examenes-UTN/alumno_1
sudo chown -R p1c2_2024_A2:p1c2_2024_gAlumno /Examenes-UTN/alumno_2
sudo chown -R p1c2_2024_A3:p1c2_2024_gAlumno /Examenes-UTN/alumno_3
sudo chown -R p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores

sudo chmod -R 750 /Examenes-UTN/alumno_1 
sudo chmod -R 760 /Examenes-UTN/alumno_2
sudo chmod -R 700 /Examenes-UTN/alumno_3
sudo chmod -R 770 /Examenes-UTN/profesores

sudo su -c "whoami > /Examenes-UTN/alumno_1/validar.txt" p1c2_2024_A1
sudo su -c "whoami > /Examenes-UTN/alumno_2/validar.txt" p1c2_2024_A2
sudo su -c "whoami > /Examenes-UTN/alumno_3/validar.txt" p1c2_2024_A3
sudo su -c "whoami > /Examenes-UTN/profesores/validar.txt" p1c2_2024_P1

sudo chmod 750 /Examenes-UTN/alumno_1/validar.txt
sudo chmod 760 /Examenes-UTN/alumno_2/validar.txt
sudo chmod 700 /Examenes-UTN/alumno_3/validar.txt
sudo chmod 770 /Examenes-UTN/profesores/validar.txt

