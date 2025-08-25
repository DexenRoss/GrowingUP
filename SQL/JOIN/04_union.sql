SELECT user_id FROM users
UNION ALL
SELECT user_id FROM ine;

SELECT users.user_id AS uid, ine.user_id AS iid FROM users
LEFT JOIN ine
ON users.user_id = ine.user_id
UNION 
SELECT users.user_id, ine.user_id FROM users
RIGHT JOIN ine 
ON users.user_id = ine.user_id;