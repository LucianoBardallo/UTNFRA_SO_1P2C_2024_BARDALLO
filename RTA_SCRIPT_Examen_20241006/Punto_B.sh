#!/bin/bash

RUTA_DISCO="/dev/sdc"

# Crear particiones en el disco
sudo fdisk $RUTA_DISCO << EOF
n
p


+1G

n
p


+1G

n
p


+1G

n
e



n

+1G

n

+1G

n

+1G

n

+1G

n

+1G

n

+1G

n


w
EOF


echo "-----------------------"
sudo fdisk $RUTA_DISCO -l


echo "-----------------------"
sudo mkfs.ext4 ${RUTA_DISCO}1
sudo mkfs.ext4 ${RUTA_DISCO}2
sudo mkfs.ext4 ${RUTA_DISCO}3
sudo mkfs.ext4 ${RUTA_DISCO}5
sudo mkfs.ext4 ${RUTA_DISCO}6
sudo mkfs.ext4 ${RUTA_DISCO}7
sudo mkfs.ext4 ${RUTA_DISCO}8
sudo mkfs.ext4 ${RUTA_DISCO}9
sudo mkfs.ext4 ${RUTA_DISCO}10
sudo mkfs.ext4 ${RUTA_DISCO}11

echo "-----------------------"

sudo mount ${RUTA_DISCO}1 ~/repogit/Examenes-UTN/alumno_1/parcial_1
sudo mount ${RUTA_DISCO}2 ~/repogit/Examenes-UTN/alumno_1/parcial_2
sudo mount ${RUTA_DISCO}3 ~/repogit/Examenes-UTN/alumno_1/parcial_3
sudo mount ${RUTA_DISCO}5 ~/repogit/Examenes-UTN/alumno_2/parcial_1
sudo mount ${RUTA_DISCO}6 ~/repogit/Examenes-UTN/alumno_2/parcial_2
sudo mount ${RUTA_DISCO}7 ~/repogit/Examenes-UTN/alumno_2/parcial_3
sudo mount ${RUTA_DISCO}8 ~/repogit/Examenes-UTN/alumno_3/parcial_1
sudo mount ${RUTA_DISCO}9 ~/repogit/Examenes-UTN/alumno_3/parcial_2
sudo mount ${RUTA_DISCO}10 ~/repogit/Examenes-UTN/alumno_3/parcial_3
sudo mount ${RUTA_DISCO}11 ~/repogit/Examenes-UTN/profesores

echo "-----------------------"

echo "/dev/sdc1 ~/repogit/Examenes-UTN/alumno_1/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc2 ~/repogit/Examenes-UTN/alumno_1/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc3 ~/repogit/Examenes-UTN/alumno_1/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc5 ~/repogit/Examenes-UTN/alumno_2/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc6 ~/repogit/Examenes-UTN/alumno_2/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc7 ~/repogit/Examenes-UTN/alumno_2/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc8 ~/repogit/Examenes-UTN/alumno_3/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc9 ~/repogit/Examenes-UTN/alumno_3/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc10 ~/repogit/Examenes-UTN/alumno_3/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc11 ~/repogit/Examenes-UTN/profesores ext4 defaults 0 0" | sudo tee -a /etc/fstab
sudo mount -a
cat /etc/fstab

echo "-----------------------"
echo "Script finalizado"
