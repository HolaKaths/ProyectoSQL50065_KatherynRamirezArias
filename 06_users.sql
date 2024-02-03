--  Admini ME: él será el SuperUser con mayor control
CREATE USER 'AdminMiEstilo'@'localhost' IDENTIFIED BY 'password_pruebaadmin';

-- Recibe: permisos de lectura, inserción, modificación y eliminación en todas las tablas
GRANT ALL PRIVILEGES ON mi_estilo.* TO 'AdminMiEstilo'@'localhost';

-- Moderador ME
CREATE USER 'ModMiEstilo'@'localhost' IDENTIFIED BY 'password_pruebamod';

-- Recibe: permisos de lectura, inserción y modificación en todas las tablas. No tendrá permisos de eliminación.
GRANT SELECT, INSERT, UPDATE ON mi_estilo.* TO 'ModMiEstilo'@'localhost';


-- Analista ME
CREATE USER 'AnalystME'@'localhost' IDENTIFIED BY 'password_pruebaame';

-- Recibe permisos de lectura en todas las tablas. No tendrá permisos de inserción, modificación ni eliminación
GRANT SELECT ON mi_estilo.* TO 'AnalystME'@'localhost';

REVOKE DELETE ON *.* FROM 'AdminMiEstilo'@'localhost';
REVOKE DELETE ON *.* FROM 'ModMiEstilo'@'localhost';
