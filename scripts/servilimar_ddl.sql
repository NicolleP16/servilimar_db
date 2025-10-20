CREATE TABLE tipo_usuario(
	id_tipo INT PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL
);

CREATE TABLE ciudad(
	id_ciudad INT PRIMARY KEY,
	nombre_ciudad VARCHAR(100) NOT NULL,
	codigo_postal VARCHAR(10) NOT NULL
);

CREATE TABLE usuario(
	id_usuario INT PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	apellido VARCHAR(100) NOT NULL,
	tipo_usuario INT,
	id_ciudad INT NOT NULL,
	FOREIGN KEY(tipo_usuario) REFERENCES tipo_usuario(id_tipo),
	FOREIGN KEY(id_ciudad) REFERENCES ciudad(id_ciudad)
);

CREATE TABLE empleado(
	id_empleado INT PRIMARY KEY,
	id_usuario INT NOT NULL,
	FOREIGN KEY(id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE departamento(
	id_departamento INT PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL
);

CREATE TABLE cargo(
	id_cargo INT PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL
);

CREATE TABLE empleadoDepartamento(
	id_empleado INT NOT NULL,
	id_departamento INT NOT NULL,
	FOREIGN KEY(id_empleado) REFERENCES empleado(id_empleado),
	FOREIGN KEY(id_departamento) REFERENCES departamento(id_departamento),
	PRIMARY KEY(id_empleado, id_departamento)
);

CREATE TABLE empleadoCargo(
	id_empleado INT NOT NULL,
	id_cargo INT NOT NULL,
	FOREIGN KEY(id_empleado) REFERENCES empleado(id_empleado),
	FOREIGN KEY(id_cargo) REFERENCES cargo(id_cargo),
	PRIMARY KEY(id_empleado, id_cargo)
);

CREATE TABLE condicion(
	id_condicion INT PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL
);

CREATE TABLE usuarioCondicion(
	id_condicion INT NOT NULL,
	id_usuario INT NOT NULL,
	FOREIGN KEY(id_usuario) REFERENCES usuario(id_usuario),
	FOREIGN KEY(id_condicion) REFERENCES condicion(id_condicion),
	PRIMARY KEY(id_condicion, id_usuario)
);

CREATE TABLE servicio(
	id_servicio INT PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	descripcion TEXT,
	estado VARCHAR(50) NOT NULL
);

CREATE TABLE turno(
	id_turno INT,
	fecha TIMESTAMP NOT NULL,
	hora_inicio TIME NOT NULL,
	hora_fin TIME NOT NULL,
	estado VARCHAR(50) NOT NULL,
	id_usuario INT NOT NULL,
	id_empleado INT NOT NULL,
	id_servicio INT NOT NULL,
	FOREIGN KEY(id_usuario) REFERENCES usuario(id_usuario),
	FOREIGN KEY(id_empleado) REFERENCES empleado(id_empleado),
	FOREIGN KEY(id_servicio) REFERENCES servicio(id_servicio),
	PRIMARY KEY(id_turno, id_usuario, id_empleado, id_servicio)
);

CREATE TABLE medio(
	id_medio INT PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL
);

CREATE TABLE notificacion(
	id_notificacion INT PRIMARY KEY,
	id_usuario INT NOT NULL,
	id_medio INT NOT NULL,
	mensaje TEXT NOT NULL,
	estado VARCHAR(50) NOT NULL,
	fecha_envio TIMESTAMP NOT NULL,
	FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
	FOREIGN KEY (id_medio) REFERENCES medio(id_medio)
);