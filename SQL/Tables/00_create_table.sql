CREATE TABLE users (
        user_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
        name VARCHAR(100) UNIQUE NOT NULL,
        surname VARCHAR(100),
        age INT,
        satrt_date DATE,
        email VARCHAR(100)
);

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

-- esqueleto de las tablas de test
CREATE TABLE persons2 (
        user_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
        name VARCHAR(100) NOT NULL,
        surname VARCHAR(100),
        age INT,
        satrt_date DATETIME DEFAULT CURRENT_TIMESTAMP(),
        email VARCHAR(100) UNIQUE,
        CHECK(age>=18)
);

