-- Se crea base de datos:
R: CREATE DATABASE desafio3_felipe_palma_111;

-- se crea tabla usuarios
R: CREATE TABLE usuarios (id SERIAL, nombre VARCHAR, apellido VARCHAR, email VARCHAR, rol VARCHAR);

-- se agregan datos de usuaroios a tabla "usuaroos"

R: 
INSERT INTO usuarios (id, nombre. apellido, email, rol) values (1, 'Andrea', 'Navas', 'apalma@chile.cl', 'Administrador');
INSERT INTO usuarios (id, nombre, apellido, email, rol) values (2, 'Fredy', 'Rojas' 'FredyP@google.com', 'usuario');
INSERT INTO usuarios (id, nombre, apellido, email, rol) values (3, 'Felipe'. 'Palma', 'Felipe.Palma@gmail.com' 'usuario');
INSERT INTO usuarios (id, nombre, apellido, email, rol) values (4, 'Sofia', 'Perez', 'SofiaP@hotmail.com', 'usuarios');
INSERT INTO usuarios (id, nombrea,apellido, email, rol) values (5, 'Maria', 'Saldivia' 'Mariasaldivia@google.cl' 'usuario');

--se crea tabla post
R: CREATE TABLE post(id SERIAL, titulo VARCHAR, contenido TEXT, fecha_creacion TIMESTAMP, fecha_actualizacion TIMESTAMP, destacado BOOLEAN, usuario_id BIGINT);

--se  agregan datos a tabla "post"
R:
INSERT INTO post (id, titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) values (1, 'La comida chilena', 'La comida chilena actual posee una gran influencia de nuestros vecinos preuanos...', '12-12-1990', '02-03-1991', true, 1 );
INSERT INTO post (id, titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) values (2, 'El futbol profesional chileno no es bueno', 'segun estadisticas extraidas desde la web de FIFA, se puede indicar que la liga profesional chilena no posee los requisitos para considerarse dentro de las mejores de America...', '10-03-2001', '04-10-2002', true, 1 );
INSERT INTO post (id, titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) values (3, 'El rock no esta muerto', 'Segun diversas encuentas indican que la musica rock no esta muerta, pero si hay un gran numero de oyentes que no estan dispuesto a escuchar a bandas nuevas...', '03-01-2021', '01-10-2021', true,2);
INSERT INTO post (id, titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) values (4, 'Las redes sociales son la nueva forma de interaccion', 'Segun estudios cada vez las interacciones entre humanos van disminuyendo debido al alto alcance de la tecnologia y las RRSS', '11-04-2022','08-05-2022', false,3);
INSERT INTO post (id, titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) values (5, 'El formato de trabaji hibrido llego para quedarse', 'Con los acontecimientos ocurridos durante los aultimos años se han incrementado las formas de trabajo alternativas como lo es el trabajo de forma hibrida y por objetivos', '06-10-2021', '02-01-2022', false, null);


--se crea tabla comentarios
R: CREATE TABLE comentarios (id SERIAL, contenido TEXT, fecha_creacion TIMESTAMP, usuario_id BIGINT, post_id BIGINT);

--se agregan datots a tabla cpmentarios
R:
INSERT INTO comentarios (id, contenido, fecha_creacion, usuario_id, post_id) values (1, 'Hola','12-12-1990', 1, 1);
INSERT INTO comentarios (id, contenido, fecha_creacion, usuario_id, post_id) values (2, 'Pizza','10-03-2001', 2, 1);
INSERT INTO comentarios (id, contenido, fecha_creacion, usuario_id, post_id) values (3, 'Chao','03-01-2021', 3, 1);
INSERT INTO comentarios (id, contenido, fecha_creacion, usuario_id, post_id) values (4, 'Mensaje','11-04-2022', 1, 2);
INSERT INTO comentarios (id, contenido, fecha_creacion, usuario_id, post_id) values (5, 'Bar','06-10-2021', 2, 2);

--PREGUNTAS!!!!

--Cruza los datos de la tabla usuarios y posts mostrando las siguientes columnas. nombre e email del usuario junto al título y contenido del post. (1 Punto)

SELECT usuarios.nombre, usuarios.email, post.titulo, post.contenido FROM usuarios INNER JOIN post ON usuarios.id = post.usuario_id;

--Muestra el id, título y contenido de los posts de los administradores. El administrador puede ser cualquier id y debe ser seleccionado dinámicamente.(1 Punto).

SELECT usuarios.id, post.titulo, post.contenido FROM post INNER JOIN usuarios ON post.usuario_id = usuarios.id WHERE usuarios.rol ='Administrador';

--Cuenta la cantidad de posts de cada usuario. La tabla resultante debe mostrar el id e email del usuario junto con la cantidad de posts de cada usuario. (1 Punto)

SELECT usuarios.id, usuarios.email, COUNT(post.id) FROM usuarios LEFT JOIN post ON usuarios.id = post.usuario_id GROUP BY usuarios.id, usuarios.email;

--Muestra el email del usuario que ha creado más posts. Aquí la tabla resultante tiene un único registro y muestra solo el email. (1 Punto)

SELECT usuarios.email FROM usuarios INNER JOIN post ON usuarios.id = post.id GROUP BY usuarios.email ORDER BY COUNT (post.id) DESC;

--Muestra la fecha del último post de cada usuario. (1 Punto)

SELECT nombre, MAX(fecha_creacion) FROM (SELECT post.contenido, post.fecha_creacion, usuarios.nombre FROM usuarios INNER JOIN post ON usuarios.id = post.usuario_id) AS fechaMAX GROUP BY nombre;

--Muestra el título y contenido del post (artículo) con más comentarios. (1 Punto)

SELECT post.titulo, post.contenido FROM post INNER JOIN ( SELECT post_id, COUNT(comentarios.post_id) AS cantidad FROM comentarios GROUP BY comentarios.post_id ORDER BY cantidad DESC LIMIT 1) ON post.id = post_id;

--Muestra en una tabla el título de cada post, el contenido de cada post y el contenid de cada comentario asociado a los posts mostrados, junto con el email del usuarioque lo escribió. (1 Punto)

SELECT post.titulo, post.contenido, comentarios.contenido, usuarios.email FROM comentarios INNER JOIN post ON comentarios.post_id = post.id INNER JOIN usuarios ON usuarios.id = comentarios.id;

--Muestra el contenido del último comentario de cada usuario. (1 Punto

