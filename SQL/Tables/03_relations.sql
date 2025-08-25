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
    user_id INT NOT NULL,
    lang_id INT NOT NULL,
    FOREIGN KEY(lang_id) REFERENCES languages(lang_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    UNIQUE (user_id, lang_id)
);

INSERT INTO ine (ine_number, user_id) VALUES (31500870, 444);
INSERT INTO ine (ine_number, user_id) VALUES (46523690, 6);
INSERT INTO ine (ine_number) VALUES (14890675);
INSERT INTO ine (ine_number, user_id) VALUES (89071639,3);
INSERT INTO ine (ine_number, user_id) VALUES (67452314,2);
INSERT INTO ine (ine_number, user_id) VALUES (35476546,1);

INSERT INTO companies (name) VALUES ('Konemi');
INSERT INTO companies (name) VALUES ('Nientiendo');
INSERT INTO companies (name) VALUES ('DexenIndustries');