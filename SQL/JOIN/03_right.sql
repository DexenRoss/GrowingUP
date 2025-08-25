SELECT * FROM users
RIGHT JOIN ine
ON users.user_id = ine.user_id;

SELECT users.name, ine_number FROM ine
RIGHT JOIN users
ON users.user_id = ine.user_id
WHERE ine_number IS NOT NULL;

SELECT users.name, languages.name
FROM users
LEFT JOIN users_languages ON users_languages.user_id = users.user_id
LEFT JOIN languages ON users_languages.lang_id = languages.lang_id;