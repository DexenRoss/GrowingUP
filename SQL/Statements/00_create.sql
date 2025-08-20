CREATE TABLE users (
        user_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
        name VARCHAR(100) UNIQUE NOT NULL,
        surname VARCHAR(100),
        age INT,
        satrt_date DATE,
        email VARCHAR(100)
);