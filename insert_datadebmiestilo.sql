-- Inserción de datos en la tabla Users

INSERT INTO Users
            (username,email,password,created_at,updated_at)
VALUES      ('Anitanumerouno','anita1@email.com','contrasena1',
             '2022-01-15 10:30:00',
             '2022-03-20 15:45:00'),
            ('Anitanumrodos','anita2@email.com','contrasena2',
             '2023-02-05 14:20:00',
             '2023-04-10 09:15:00'),
            ('Tatiananumerotres','tatiana3@email.com','contrasena3',
             '2023-03-10 08:45:00',
             '2023-05-25 12:30:00'),
            ('Lauranumerocuatro','laura4@email.com','contrasena4',
             '2023-04-20 17:10:00',
             '2023-06-30 16:05:00'),
            ('Vanessanumerocinco','vanessa5@email.com','contrasena5',
             '2022-05-25 11:55:00',
             '2022-07-05 14:25:00'),
            ('Sofianumerouno','sofia1@email.com','contrasena6',
             '2023-06-10 09:30:00',
             '2023-08-10 18:40:00'),
            ('Andreanumerosiete','andrea7@email.com','contrasena7',
             '2023-07-15 13:15:00',
             '2023-09-15 10:30:00'),
            ('Alicenumeroseis','alice6z@email.com','contrasena8',
             '2023-08-05 16:40:00','2023-09-25 19:15:00'),
            ('Jorgerojasnueve','jorgerojas9@email.com','contrasena9',
             '2023-09-01 10:20:00',
             '2023-09-10 11:50:00'),
            ('Katherynnumerotrece','katheryn13@email.com','contrasena10',
             '2024-09-10 14:30:00',
             '2024-09-15 15:20:00')
            ('Soyinumerouno','soyiuno@email.com','contrasena10',
             '2024-12-10 14:30:00',
             '2024-12-15 15:20:00'); 

-- Inserción de datos de Productsde Mi Estilo

-- Curso de automaquillaje
INSERT INTO Products
(name, description, price, seller_id, created_at, updated_at)
VALUES
('Automaquillaje para principiantes',
 'Aprende a maquillarte como una profesional con este curso de automaquillaje para principiantes. En este curso aprenderás las técnicas básicas de maquillaje, desde cómo aplicar la base hasta cómo crear un look de noche.',
 20.00,
 1,
 NOW(),
 NOW());

-- Curso de uñas acrílicas
INSERT INTO Products
(name, description, price, seller_id, created_at, updated_at)
VALUES
('Uñas acrílicas: desde principiante a experta',
 'Aprende a crear uñas acrílicas perfectas con este curso. En este curso aprenderás todo lo que necesitas saber sobre las uñas acrílicas, desde cómo preparar las uñas hasta cómo aplicar el acrílico.',
 30.00,
 1,
 NOW(),
 NOW());

-- Curso de peinados para bodas
INSERT INTO Products
(name, description, price, seller_id, created_at, updated_at)
VALUES
('Peinados para bodas: looks de ensueño',
 'Aprende a crear peinados de boda espectaculares con este curso. En este curso aprenderás a crear diferentes estilos de peinados para bodas, desde moños clásicos hasta trenzas modernas.',
 40.00,
 1,
 NOW(),
 NOW());

-- Curso de maquillaje para eventos
INSERT INTO Products
(name, description, price, seller_id, created_at, updated_at)
VALUES
('Maquillaje para eventos: looks para brillar',
 'Aprende a crear looks de maquillaje perfectos para eventos con este curso. En este curso aprenderás a crear diferentes estilos de maquillaje para eventos, desde maquillaje natural hasta maquillaje de noche.',
 50.00,
 1,
 NOW(),
 NOW());

-- Curso de empoderamiento femenino
INSERT INTO Products
(name, description, price, seller_id, created_at, updated_at)
VALUES
('Empoderamiento femenino: una guía para tu desarrollo personal',
 'En este curso aprenderás sobre el empoderamiento femenino y cómo aplicarlo a tu vida. Aprenderás sobre la importancia del autoestima, la autoconfianza y la autogestión.',
 60.00,
 1,
 NOW(),
 NOW());

