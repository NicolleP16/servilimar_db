#!/bin/bash
# ==============================================
# Script: postgres_run.sh
# Descripción: Levantamiento del contenedor PostgreSQL
# ==============================================

# Nombre del contenedor
CONTAINER_NAME=postgres

# Usuario y contraseña
USER=ulimar
PASSWORD=ex4men_db

# Puerto del contenedor
PORT=5432

# Imagen de Docker
IMAGE=postgres:14

echo "Iniciando contenedor PostgreSQL..."

docker run -d \
  --name $CONTAINER_NAME \
  -e POSTGRES_USER=$USER \
  -e POSTGRES_PASSWORD=$PASSWORD \
  -p $PORT:5432 \
  $IMAGE

echo "Contenedor PostgreSQL desplegado correctamente."