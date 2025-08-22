CREATE TABLE ine(
    ine_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    ine_number INT NOT NULL,
    user_id INT,
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);

CREATE TABLE companies(
    company_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(100) NOT NULL
);

ALTER TABLE users ADD company VARCHAR(100);

ALTER TABLE users RENAME COLUMN company TO company_id;

ALTER TABLE users MODIFY COLUMN company_id INT;

ALTER TABLE users ADD CONSTRAINT fk_company FOREIGN KEY(company_id) REFERENCES companies(company_id)

CREATE TABLE languages(
    lang_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE users_languages(
    users_lang_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT UNIQUE,
    lang_id INT UNIQUE,
    FOREIGN KEY(lang_id) REFERENCES languages(lang_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);