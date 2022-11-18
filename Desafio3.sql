-- Se crea base de datos:
R: CREATE DATABASE desafio3_felipe_palma_111;

-- se crea tabla usuarios
R: CREATE TABLE usuarios (id SERIAL, nombre VARCHAR, apellido VARCHAR, email VARCHAR, rol VARCHAR);

-- se agregan datos de usuaroios a tabla "usuaroos"

R: 
INSERT INTO usuarios (nombre. apellido, email, rol) values ('Andrea', 'Palma', 'apalma@chile.cl', 'Administrador');
INSERT INTO usuarios (nombre, apellido, email, rol) values