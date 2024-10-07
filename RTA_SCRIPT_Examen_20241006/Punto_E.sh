#!/bin/bash

grep MemTotal /proc/meminfo > ~/repogit/UTNFRA_SO_1P2C_2024_BARDALLO/RTA_ARCHIVOS_Examen_20241006/Filtro_Basico.txt

sudo dmidecode -t chassis | grep Manufacturer >> ~/repogit/UTNFRA_SO_1P2C_2024_BARDALLO/RTA_ARCHIVOS_Examen_20241006/Filtro_Basico.txt
