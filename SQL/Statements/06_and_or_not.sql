SELECT name FROM users WHERE NOT email="example@gmail.com";
SELECT name FROM users WHERE NOT email="example@gmail.com" AND age = 25;
SELECT name FROM users WHERE NOT email="example@gmail.com" OR age = 25;