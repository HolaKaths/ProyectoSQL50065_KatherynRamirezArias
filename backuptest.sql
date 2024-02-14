-- Backup de la tabla Users


mysqldump -u root -p miclave db_miestilo --no-create-info --tables Users > backup_usersmiestilo.sql



* `holakaths`: Holakaths.
* `Modificadaparaestasección.`
* `db_miestilo`

-- **Ejemplo:**

mysqldump -u root -p miclave mi_proyecto --no-create-info --tables Users > backup_users.sql

-- **Contenido del archivo backup_users.sql:**

```sql
-- Este archivo contiene un backup de los datos de la tabla Users

-- Fecha de generación: 2023-11-13

INSERT INTO Users (name, email, password, created_at, updated_at)
VALUES
('Anitanumerouno', 'anita1@email.com', 'contrasena1', '2022-01-15 10:30:00', '2022-03-20 15:45:00'),
('Anitanumrodos', 'anita2@email.com', 'contrasena2', '2023-02-05 14:20:00', '2023-04-10 09:15:00'),
('Tatiananumerotres', 'tatiana3@email.com', 'contrasena3', '2023-03-10 08:45:00', '2023-05-25 12:30:00'),
('Lauranumerocuatro', 'laura4@email.com', 'contrasena4', '2023-04-20 17:10:00', '2023-06-30 16:05:00'),
('Vanessanumerocinco', 'vanessa5@email.com', 'contrasena5', '2022-05-25 11:55:00', '2022-07-05 14:25:00'),
('Sofianumerouno', 'sofia1@email.com', 'contrasena6', '2023-06-10 09:30:00', '2023-08-10 18:40:00'),
('Andreanumerosiete', 'andrea7@email.com', 'contrasena7', '2023-07-15 13:15:00', '2023-09-15 10:30:00'),
('Alicenumeroseis', 'alice6z@email.com', 'contrasena8', '2023-08-05 16:40:00', '2023-09-25 19:15:00'),
('Jorgerojasnueve', 'jorgerojas9@email.com', 'contrasena9', '2023-09-01 10:20:00', '2023-09-10 11:50:00'),
('Katherynnumerotrece', 'katheryn13@email.com', 'contrasena10', '2024-09-10 14:30:00', '2024-09-15 15:20:00'),
('Soyinumerouno', 'soyiuno@email.com', 'contrasena10', '2024-12-10 14:30:00', '2024-12-15 15:20:00');
