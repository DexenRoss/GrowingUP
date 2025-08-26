CREATE TABLE email_history(
    email_his_id INT PRIMARY KEY  AUTO_INCREMENT NOT NULL,
    user_id INT NOT NULL,
    email VARCHAR(100)
);

DELIMITER $$
CREATE TRIGGER tg_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
    IF OLD.email <> NEW.email THEN 
        INSERT INTO email_history(user_id, email)
        VALUES(OLD.user_id,OLD.email);
    END IF;
END;

DELIMITER ;

UPDATE users SET email = 'ruji@gg.com' WHERE user_id=7;

DROP TRIGGER tr_name