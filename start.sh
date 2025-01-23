#!/bin/bash

# Inicializar el servidor
clear
echo 'Cargando el checker... por favor espere'
echo 'Detectando codigo fuente...'
sleep 3

# Configurar las rutas del servidor
DIRECTORIO='Cheker CC Bsz - V0.0.0'
echo "Codigo fuente cargado, utilizando: $DIRECTORIO"
sleep 3
clear

# Instalar PHP
echo 'Instalando servidor...'
if ! command -v php &> /dev/null
then
    echo "El servidor no está instalado. Instalando..."
    sudo apt update
    sudo apt install -y php
    echo "Servidor instalado"
else
    echo "El servidor ya está instalado."
fi
sleep 3
clear

# Ejecutar el servidor
IP="localhost:8000"
echo "Ejecutando servidor en $IP"
php -S $IP -t "$DIRECTORIO"
