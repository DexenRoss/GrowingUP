DELIMITER $$
CREATE PROCEDURE p_all_users()
BEGIN
    SELECT * FROM users;
END;
DELIMITER ;

CALL p_all_users();

DELIMITER $$
CREATE PROCEDURE p_ages_users(IN age_filter INT)
BEGIN
    SELECT * FROM users WHERE age = age_filter;
END;
DELIMITER ;

CALL p_ages_users(25);