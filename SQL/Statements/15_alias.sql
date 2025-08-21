SELECT name, satrt_date AS 'Fecha de inicio en la programacion' FROM users WHERE name LIKE '%i%';

SELECT CONCAT(name,' ',surname) AS 'Nombre Completo' FROM users WHERE surname IS NOT NULL; 