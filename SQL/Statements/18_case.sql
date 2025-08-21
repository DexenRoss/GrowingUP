SELECT *,
CASE 
    WHEN age > 17 THEN 'Es mayor de edad'
    ELSE 'Es menor de edad'
END AS agetext
FROM users; 

SELECT *,
CASE 
    WHEN age > 17 THEN 'Es mayor de edad'
    WHEN age IS NULL THEN 'No ha registrado su edad'
    ELSE 'Mayoria de edad'
END AS agetext
FROM users; 