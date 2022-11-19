-- Se crea base de datos:
R: CREATE DATABASE desafio3_felipe_palma_111;

-- se crea tabla usuarios
R: CREATE TABLE usuarios (id SERIAL, nombre VARCHAR, apellido VARCHAR, email VARCHAR, rol VARCHAR);

-- se agregan datos de usuaroios a tabla "usuaroos"

R: 
INSERT INTO usuarios (nombre. apellido, email, rol) values ('Andrea', 'Palma', 'apalma@chile.cl', 'Administrador');
INSERT INTO usuarios (nombre, apellido, email, rol) values ('Fredy', 'Palma' 'FredyP@google.com', 'usuario');
INSERT INTO usuarios (nombre, apellido, email, rol) values ('Felipe'. 'Palma', 'Felipe.Palma@gmail.com' 'usuario');
INSERT INTO usuarios (nombre, apellido, email, rol) values ('Sofia', 'Palma', 'SofiaP@hotmail.com', 'usuarios');
INSERT INTO usuarios (nombrea,apellido, email, rol) values ('Maria', 'Saldivia' 'Mariasaldivia@google.cl' 'usuario');

--se crea tabla post
R: CREATE TABLE post(id SERIAL, titulo VARCHAR, contenido TEXT, fecha_creacion TIMESTAMP, fecha_actualizacion TIMESTAMP, destacado BOOLEAN, usuario_id BIGINT);

