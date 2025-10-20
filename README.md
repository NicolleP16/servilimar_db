ServiLimar – Base de Datos

Este repositorio contiene los archivos y scripts necesarios para el despliegue del motor de base de datos **PostgreSQL 14** junto con **pgAdmin4**, utilizando contenedores Docker.  
El entorno fue configurado para la base de datos **ServiLimar**, creada con el usuario 'ulimar' y contraseña 'ex4men_db'.

---

1. Despliegue del entorno con Docker
Contenedor PostgreSQL
Para crear y ejecutar el contenedor de PostgreSQL:
docker run -d \
  --name postgres_servilimar \
  -e POSTGRES_USER=ulimar \
  -e POSTGRES_PASSWORD=ex4men_db \
  -p 5432:5432 \
  postgres:14
Este comando:
Descarga la imagen oficial de PostgreSQL 14.
Crea un contenedor llamado postgres_servilimar.
Define las credenciales del usuario (ulimar / ex4men_db).
Expone el puerto 5432 para conectarse desde pgAdmin.

Contenedor pgAdmin4
Para gestionar la base de datos gráficamente, se utiliza pgAdmin4:
docker run -d \
  --name pgadmin_servilimar \
  --link postgres_servilimar:postgres \
  -p 5050:80 \
  -e PGADMIN_DEFAULT_EMAIL=admin@servilimar.com \
  -e PGADMIN_DEFAULT_PASSWORD=Limar#123 \
  dpage/pgadmin4
Este comando:
Crea un contenedor llamado pgadmin_servilimar.
Enlaza el contenedor con PostgreSQL.
Permite acceder a la interfaz web desde http://localhost:5050.

Credenciales de acceso a pgAdmin:
Usuario: admin@servilimar.com
Contraseña: limar#123

2. Base de datos ServiLimar
Dentro del contenedor de PostgreSQL se creó la base de datos principal:
CREATE DATABASE servilimar;
Posteriormente se definieron las tablas y datos correspondientes usando los siguientes scripts.

3. Scripts SQL
Los archivos SQL están organizados en la carpeta /scripts:
🔹 DDL – Definición de estructura
Archivo: scripts/servilimar_ddl.sql
Contiene las sentencias CREATE TABLE, claves primarias, foráneas y relaciones de la base de datos ServiLimar.

🔹 DML – Carga de datos iniciales
Archivo: scripts/dml_servilimar.sql
Incluye las sentencias INSERT INTO con diez registros para cad tabla.

4. Estructura del repositorio
servilimar-db/
│
├── README.md
├── docker/
│   ├── postgres_run.sh        # Script de despliegue de PostgreSQL
│   └── pgadmin_run.sh         # Script de despliegue de pgAdmin4
│
├── scripts/
    ├── servilimar_ddl.sql     # Script DDL (estructura)
    └── servilimar_dml.sql     # Script DML (datos)

5. Ejecución general
Clonar o descargar el repositorio.
Ejecutar los scripts de Docker desde la terminal o VS Code:
./docker/postgres_run.sh
./docker/pgadmin_run.sh

Acceder a pgAdmin en http://localhost:5050.
Conectarse al servidor PostgreSQL usando:

Host: postgres
Puerto: 5432
Usuario: ulimar
Contraseña: ex4men_db

Ejecutar los scripts DDL y DML dentro de la base de datos servilimar.

Autor
Nicolle Paz
2419714-2724
2025
