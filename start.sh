#!/bin/bash

# Inicializar el servidor
cls
echo 'Cargando el checker... por favor espere'
echo 'Detectando codigo fuente...'
sleep 3

# Configurar las rutas del servidor
DIRECTORIO = 'Cheker CC Bsz - V0.0.0'
echo "Codigo fuente cargado, utilizando: $DIRECTORIO"
cls

# Actualizar los paquetes
echo 'Actualizando el sistema...'
sleep 3
sudo apt update
cls
echo "Sistema Actualizado..."
sleep 3

# Instalar PHP
echo 'Instalando servidor...'
sudo apt install -y php
cls

# Ejecutar el servidor
IP = localhost:8000
echo "Ejecutando servirdor en $IP"
php -S $IP -t "$DIRECTORIO"
