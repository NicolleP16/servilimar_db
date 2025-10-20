INSERT INTO tipo_usuario VALUES
    (1, 'Administrador'),
    (2, 'Empleado'),
    (3, 'Cliente'),
    (4, 'Proveedor'),
    (5, 'Supervisor'),
    (6, 'Recepcionista'),
    (7, 'Técnico'),
    (8, 'Gerente'),
    (9, 'Asistente'),
    (10, 'Interno');

INSERT INTO ciudad VALUES
    (1, 'Bogotá', '110111'),
    (2, 'Medellín', '050021'),
    (3, 'Cali', '760001'),
    (4, 'Barranquilla', '080001'),
    (5, 'Cartagena', '130001'),
    (6, 'Pereira', '660001'),
    (7, 'Manizales', '170001'),
    (8, 'Bucaramanga', '680001'),
    (9, 'Santa Marta', '470001'),
    (10, 'Cúcuta', '540001');

INSERT INTO usuario VALUES
    (1, 'Laura', 'Gómez', 3, 1),
    (2, 'Carlos', 'Martínez', 2, 2),
    (3, 'Ana', 'Rojas', 3, 3),
    (4, 'Luis', 'Pérez', 1, 1),
    (5, 'Sofía', 'Díaz', 3, 4),
    (6, 'Marcos', 'Ramírez', 2, 5),
    (7, 'Valentina', 'Moreno', 3, 6),
    (8, 'Diego', 'Torres', 2, 7),
    (9, 'Camila', 'Jiménez', 3, 8),
    (10, 'Andrés', 'Castro', 3, 9);

INSERT INTO empleado VALUES
    (1, 2),
    (2, 4),
    (3, 6),
    (4, 8),
    (5, 10),
    (6, 1),
    (7, 3),
    (8, 5),
    (9, 7),
    (10, 9);

INSERT INTO departamento VALUES
	(1, 'Atención al Cliente'),
	(2, 'Consultoría'),
	(3, 'Recepción'),
	(4, 'Soporte Técnico'),
	(5, 'Pediatría'),
	(6, 'Laboratorio'),
	(7, 'Fisioterapia'),
	(8, 'Odontología'),
	(9, 'Nutrición'),
	(10, 'Psicología');

INSERT INTO cargo VALUES
	(1, 'Asesor de Servicio'),
	(2, 'Recepcionista'),
	(3, 'Enfermero'),
	(4, 'Médico General'),
	(5, 'Técnico en Laboratorio'),
	(6, 'Fisioterapeuta'),
	(7, 'Psicólogo'),
	(8, 'Nutricionista'),
	(9, 'Odontólogo'),
	(10, 'Coordinador de Área');

INSERT INTO empleadoDepartamento VALUES
    (1, 3),
    (2, 1),
    (3, 5),
    (4, 4),
    (5, 2),
    (6, 7),
    (7, 8),
    (8, 6),
    (9, 9),
    (10, 10);

INSERT INTO empleadoCargo VALUES
    (1, 2),
    (2, 3),
    (3, 1),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);

INSERT INTO condicion VALUES
	(1, 'Embarazo'),
	(2, 'Requiere silla de ruedas'),
	(3, 'Adulto mayor'),
	(4, 'Discapacidad visual'),
	(5, 'Discapacidad auditiva'),
	(6, 'Temporal'),
	(7, 'Ninguna'),
	(8, 'Menor de edad'),
	(9, 'Movilidad reducida'),
	(10, 'Otro');

INSERT INTO usuarioCondicion VALUES
	(1, 5),
	(2, 9),
	(3, 3),
	(4, 4),
	(5, 7),
	(6, 8),
	(7, 10),
	(8, 2),
	(9, 1),
	(10, 6);

INSERT INTO servicio VALUES
	(1, 'Consulta General', 'Atención médica básica', 'Activo'),
	(2, 'Odontología', 'Revisión y limpieza dental', 'Activo'),
	(3, 'Fisioterapia', 'Tratamiento físico personalizado', 'Activo'),
	(4, 'Laboratorio', 'Toma y análisis de muestras', 'Activo'),
	(5, 'Pediatría', 'Atención médica infantil', 'Activo'),
	(6, 'Nutrición', 'Plan alimenticio personalizado', 'Activo'),
	(7, 'Psicología', 'Orientación y acompañamiento emocional', 'Activo'),
	(8, 'Ginecología', 'Atención femenina especializada', 'Activo'),
	(9, 'Consultoría', 'Asesoría médica general', 'Activo'),
	(10, 'Soporte Técnico', 'Asistencia en el sistema de turnos', 'Activo');

INSERT INTO turno VALUES
	(1, '2025-10-20', '08:00:00', '09:00:00', 'Pendiente', 1, 1, 1),
	(2, '2025-10-20', '09:00:00', '10:00:00', 'Pendiente', 2, 2, 2),
	(3, '2025-10-20', '10:00:00', '11:00:00', 'Completado', 3, 3, 3),
	(4, '2025-10-20', '11:00:00', '12:00:00', 'Cancelado', 4, 4, 4),
	(5, '2025-10-20', '13:00:00', '14:00:00', 'Pendiente', 5, 5, 5),
	(6, '2025-10-20', '14:00:00', '15:00:00', 'Pendiente', 6, 6, 6),
	(7, '2025-10-20', '15:00:00', '16:00:00', 'Completado', 7, 7, 7),
	(8, '2025-10-20', '16:00:00', '17:00:00', 'Pendiente', 8, 8, 8),
	(9, '2025-10-20', '17:00:00', '18:00:00', 'Pendiente', 9, 9, 9),
	(10, '2025-10-20', '18:00:00', '19:00:00', 'Cancelado', 10, 10, 10);

INSERT INTO medio VALUES
	(1, 'Correo electrónico'),
	(2, 'SMS'),
	(3, 'WhatsApp'),
	(4, 'Llamada telefónica'),
	(5, 'Notificación App'),
	(6, 'Telegram'),
	(7, 'Facebook Messenger'),
	(8, 'Instagram DM'),
	(9, 'Web'),
	(10, 'SMS');

INSERT INTO notificacion VALUES
	(1, 1, 1, 'Confirmación de su turno médico', 'Enviado', '2025-10-19'),
	(2, 2, 2, 'Recordatorio: turno en Odontología', 'Enviado', '2025-10-19'),
	(3, 3, 3, 'Su turno en Fisioterapia fue completado', 'Enviado', '2025-10-19'),
	(4, 4, 4, 'Turno cancelado por mantenimiento', 'Pendiente', '2025-10-19'),
	(5, 5, 5, 'Confirmación: cita pediátrica', 'Enviado', '2025-10-19'),
	(6, 6, 6, 'Actualización de su horario de nutrición', 'Enviado', '2025-10-19'),
	(7, 7, 7, 'Evaluación de atención recibida', 'Pendiente', '2025-10-19'),
	(8, 8, 8, 'Turno confirmado en ginecología', 'Enviado', '2025-10-19'),
	(9, 9, 9, 'Su consultoría está próxima a iniciar', 'Enviado', '2025-10-19'),
	(10, 10, 10, 'Soporte técnico agendado', 'Enviado', '2025-10-19');