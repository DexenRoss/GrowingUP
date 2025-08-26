CREATE VIEW v_adult_users AS
SELECT name, age FROM users
WHERE age > 17;

SELECT * FROM v_adult_users;

DROP VIEW view_name;