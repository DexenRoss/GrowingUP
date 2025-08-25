SELECT users.name, ine.ine_number FROM users
LEFT JOIN ine
ON users.user_id = ine.user_id;

SELECT * FROM users
LEFT JOIN ine
ON users.user_id = ine.user_id;


SELECT users.name, ine_number FROM ine
LEFT JOIN users
ON users.user_id = ine.user_id
WHERE users.name IS NOT NULL;

SELECT users.name, languages.name
FROM users
LEFT JOIN users_languages ON users_languages.user_id = users.user_id
LEFT JOIN languages ON users_languages.lang_id = languages.lang_id;