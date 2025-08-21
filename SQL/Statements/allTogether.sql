INSERT INTO users (user_id, name, surname, age, satrt_date, email) VALUES (1, 'Dexen', 'Ross', 25, '2018-08-14', 'example@gmail.com');
INSERT INTO users (name, age, satrt_date, email) VALUES ('Emilio', 25, CURDATE(), 'example2@gmail.com');
INSERT INTO users (name, age, satrt_date, email) VALUES ('Oscar', 26, CURDATE(), 'exa@gmail.com');

SELECT  * FROM users;
SELECT user_id, name FROM users;

SELECT DISTINCT * FROM users;
SELECT DISTINCT age FROM users;

SELECT * FROM users WHERE age=25;
SELECT name FROM users WHERE age>25;
SELECT name FROM users WHERE satrt_date< CURDATE() ORDER BY age DESC;

SELECT name FROM users WHERE email LIKE "%@gmail.com";
SELECT name FROM users WHERE email LIKE "%@%";

SELECT name FROM users WHERE NOT email="example@gmail.com";
SELECT name FROM users WHERE NOT email="example@gmail.com" AND age = 25;
SELECT name FROM users WHERE NOT email="example@gmail.com" OR age = 25;

SELECT * FROM users LIMIT 2;
SELECT name FROM users WHERE NOT email="example@gmail.com" OR age = 25 LIMIT 2;

SELECT * FROM users WHERE surname IS NULL;
SELECT * FROM users WHERE surname IS NOT NULL;

SELECT  MAX(age) FROM users;
SELECT  MIN(age) FROM users;

SELECT  COUNT(surname) FROM users;
SELECT  COUNT(age) FROM users; -- Cuenta la cantidad de datos que no son nulos del dato

SELECT  SUM(age) FROM users;

SELECT  AVG(age) FROM users;

SELECT * FROM users WHERE name IN ('Emilio', 'dexen'); -- El in se usa para especificar datos

SELECT * FROM users WHERE age BETWEEN 20 AND 30;

SELECT name, satrt_date AS 'Fecha de inicio en la programacion' FROM users WHERE name LIKE '%i%';
SELECT CONCAT(name,' ',surname) AS 'Nombre Completo' FROM users WHERE surname IS NOT NULL; 

SELECT COUNT(age) FROM users GROUP BY age;
SELECT COUNT(age) FROM users GROUP BY age ORDER BY age ASC;
SELECT COUNT(age), age FROM users WHERE age > 20 GROUP BY age ORDER BY age ASC;

SELECT * FROM users HAVING age > 26;
SELECT COUNT(age) FROM users HAVING COUNT(age) > 4;

SELECT *,
CASE 
    WHEN age > 17 THEN 'Es mayor de edad'
    ELSE 'Es menor de edad'
END AS agetext
FROM users; 

SELECT *,
CASE 
    WHEN age > 17 THEN 'Es mayor de edad'
    WHEN age IS NULL THEN 'No ha registrado su edad'
    ELSE 'Mayoria de edad'
END AS agetext
FROM users; 

SELECT IFNULL(name, 'Sin nombre'), IFNULL(surname, 'No registrado'), IFNULL(age, 0) AS age  FROM users;
