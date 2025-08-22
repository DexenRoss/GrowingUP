ALTER TABLE persons8 ADD new_field VARCHAR(20);
ALTER TABLE persons8 RENAME COLUMN new_field TO description;
ALTER TABLE persons8 MODIFY COLUMN description VARCHAR(50);
ALTER TABLE persons8 DROP COLUMN description;