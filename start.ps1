# Inicializar el servidor
Clear-Host
Write-Output 'Cargando el checker... por favor espere'
Write-Output 'Detectando codigo fuente...'
Start-Sleep -Seconds 3

# Configurar las rutas del servidor
$DIRECTORIO = 'Cheker CC Bsz - V0.0.0'
Write-Output "Codigo fuente cargado, utilizando: $DIRECTORIO"
Start-Sleep -Seconds 3
Clear-Host

# Verificar si PHP está instalado
if (-not (Get-Command php -ErrorAction SilentlyContinue)) {
    Write-Output 'El servidor no está instalado. Instalando...'
    winget install --id PHP.PHP
    Clear-Host
    Write-Output "Servidor instalado. Vuelva a ejecutar el script"
    Start-Sleep -Seconds 3
    Exit
} else {
    Write-Output 'El servidor ya está instalado.'
    Start-Sleep -Seconds 3
}

# Ejecutar el servidor
$IP = 'localhost:8000'
Write-Output "Ejecutando servidor en $IP, para cerrarlo, presione ctrl + c o cierre esta ventana"
php -S "$IP" -t "$DIRECTORIO"