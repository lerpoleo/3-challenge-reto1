#!/bin/sh
read -p "Desea crear un contenedor para base de datos en Maria DB? (Y/n): " rest1
if [ $rest1 = "y" ] || [ $rest1 = "Y" ] || [ $rest1 = "yes" ] || [ $rest1 = "YES" ] || [ $rest1 = "" ]; then
read -p "Ingresa nombre del contenedor: " name
read -p "Ingrese Password del usuario ROOT: " passRoot
read -p "Ingrese el nombre de la base de datos: " nameDB
read -p "Ingrese el nombre del usuario de la base de datos: " nameUser
read -p "Ingrese Password del usuario de la base de datos: " passUser
read -p "Ingrese numero del puerto: " nunPort
docker run -d --name $name --env MARIADB_ROOT_PASSWORD=$passRoot --env MARIADB_DATABASE=$nameDB --env MARIADB_USER=$nameUser --env MARIADB_PASSWORD=$passUser -p $nunPort:3306 mariadb
fi



