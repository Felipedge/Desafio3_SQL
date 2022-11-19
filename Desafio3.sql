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

--se  agregan datos a tabla "post"
R:
INSERT INTO post (titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) values ('La comida chilena' 'La comida chilena actual posee una gran influencia de nuestros vecinos preuanos...', '12-12-1990', '02-03-1991', true, 1 );
INSERT INTO post (titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) values ('El futbol profesional chileno no es bueno', 'segun estadisticas extraidas desde la web de FIFA, se puede indicar que la liga profesional chilena no posee los requisitos para considerarse dentro de las mejores de America...', '21-03-2001', '04-10-2002' true, 3 );
INSERT INTO post (titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) values ('El rock no esta muerto', 'Segun diversas encuentas indican que la musica rock no esta muerta, pero si hay un gran numero de oyentes que no estan dispuesto a escuchar a bandas nuevas...' '23-01-2021', '01-10-2021', true, 1);
INSERT INTO post (titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) values ('Las redes sociales son la nueva forma de interaccion', 'Segun estudios cada vez las interacciones entre humanos van disminuyendo debido al alto alcance de la tecnologia y las RRSS', '11-04-2022','08-05-2022', false,3);
INSERT INTO post (titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) values ('El formato de trabaji hibrido llego para quedarse', 'Con los acontecimientos ocurridos durante los aultimos años se han incrementado las formas de trabajo alternativas como lo es el trabajo de forma hibrida y por objetivos', '06-10-2021', '02-01-2022', false, 2);


--se crea tabla comentarios
R: CREATE TABLE comentarios (id SERIAL, contenido TEXT, fecha_creacion TIMESTAMP, usuario_id BIGINT, post_id BIGINT);

