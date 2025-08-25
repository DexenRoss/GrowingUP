SELECT * FROM users
INNER JOIN ine;

SELECT * FROM users
INNER JOIN ine
ON users.user_id = ine.user_id;

SELECT * FROM users
JOIN ine
ON users.user_id = ine.user_id;

SELECT name,ine_number FROM users
JOIN ine
ON users.user_id = ine.user_id
ORDER BY age ASC;

SELECT * FROM users
JOIN companies
ON users.company_id = companies.company_id;

SELECT users.name, languages.name
FROM users_languages
JOIN users ON users_languages.user_id = users.user_id
JOIN languages ON users_languages.lang_id = languages.lang_id;