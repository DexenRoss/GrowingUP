SELECT * FROM users WHERE surname IS NULL;
SELECT * FROM users WHERE surname IS NOT NULL;

SELECT IFNULL(name, 'Sin nombre'), IFNULL(surname, 'No registrado'), IFNULL(age, 0) AS age  FROM users;