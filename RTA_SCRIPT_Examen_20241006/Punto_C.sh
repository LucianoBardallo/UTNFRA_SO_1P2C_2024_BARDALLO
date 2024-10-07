#!/bin/bash

sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

sudo useradd -m -s /bin/bash -c "Alumno_1" -G p1c2_2024_gAlumno p1c2_2024_A1
sudo useradd -m -s /bin/bash -c "Alumno_2" -p "$(sudo grep p1c2_2024_A1  /etc/shadow | awk -F ':' '{print $2}')" -G p1c2_2024_gAlumno p1c2_2024_A2
sudo useradd -m -s /bin/bash -c "Alumno_3" -p "$(sudo grep p1c2_2024_A1  /etc/shadow | awk -F ':' '{print $2}')" -G p1c2_2024_gAlumno p1c2_2024_A3
sudo useradd -m -s /bin/bash -c "Profesores" -p "$(sudo grep p1c2_2024_A1  /etc/shadow | awk -F ':' '{print $2}')" -G p1c2_2024_gProfesores p1c2_2024_P1

sudo -u p1c2_2024_A1 bash -c 'whoami > ~/repogit/Examenes-UTN/alumno_1/validar.txt'
sudo -u p1c2_2024_A2 bash -c 'whoami > ~/repogit/Examenes-UTN/alumno_2/validar.txt'
sudo -u p1c2_2024_A3 bash -c 'whoami > ~/repogit/Examenes-UTN/alumno_3/validar.txt'
sudo -u p1c2_2024_P1 bash -c 'whoami > ~/repogit/Examenes-UTN/profesores/validar.txt'

sudo chmod -R 750 ~/repogit/Examenes-UTN/alumno_1
sudo chmod -R 760 ~/repogit/Examenes-UTN/alumno_2
sudo chmod -R 700 ~/repogit/Examenes-UTN/alumno_3
sudo chmod -R 775 ~/repogit/Examenes-UTN/profesores

sudo chown -R p1c2_2024_A1:p1c2_2024_A1 ~/repogit/Examenes-UTN/alumno_1  
sudo chown -R p1c2_2024_A2:p1c2_2024_A2 ~/repogit/Examenes-UTN/alumno_2
sudo chown -R p1c2_2024_A3:p1c2_2024_A3 ~/repogit/Examenes-UTN/alumno_3
sudo chown -R p1c2_2024_P1:p1c2_2024_gProfesores ~/repogit/Examenes-UTN/profesores

echo "Script finalizado"
