#!/bin/bash
# ==============================================
# Script: pgadmin_run.sh
# Descripción: Levanta el contenedor pgAdmin4
# ==============================================

# Nombre del contenedor
CONTAINER_NAME=pgadmin

# Credenciales de pgAdmin
EMAIL=usuario@servilimar.com
PASSWORD=limar#123

# Puerto del contenedor
PORT=5050

# Imagen de Docker
IMAGE=dpage/pgadmin4

echo "Iniciando contenedor pgAdmin4..."

docker run -d \
  --name $CONTAINER_NAME \
  --link postgres:postgres \
  -p $PORT:80 \
  -e PGADMIN_DEFAULT_EMAIL=$EMAIL \
  -e PGADMIN_DEFAULT_PASSWORD=$PASSWORD \
  $IMAGE

echo "Contenedor pgAdmin4 desplegado correctamente."