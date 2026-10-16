CREATE TABLE IF NOT EXISTS categorie (
    id_categorie SERIAL PRIMARY KEY,
    nom VARCHAR (100)
);

ALTER TABLE PLAT ADD COLUMN id_categorie INT;
ALTER TABLE PLAT ADD CONSTRAINT fk_id_categorie FOREIGN KEY (id_categorie) REFERENCES categorie(id_categorie); 

INSERT INTO categorie (nom)
VALUES  ('plat malagasy'),
        ('plat chinois'),
        ('soupe'),
        ('dessert'),
        ('boisson');

UPDATE PLAT set id_categorie = 1 WHERE id_plat=1;
UPDATE PLAT set id_categorie = 1 WHERE id_plat=2;
UPDATE PLAT set id_categorie = 1 WHERE id_plat=3;
UPDATE PLAT set id_categorie = 2 WHERE id_plat=4;
UPDATE PLAT set id_categorie = 3 WHERE id_plat=5;
UPDATE PLAT set id_categorie = 4 WHERE id_plat=6;
UPDATE PLAT set id_categorie = 5 WHERE id_plat=7;

ALTER TABLE PLAT ALTER COLUMN id_categorie set NOT NULL;

        