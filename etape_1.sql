CREATE TABLE IF NOT EXISTS plat (
    id_plat SERIAL PRIMARY KEY,
    nom VARCHAR (50) NOT NULL,
    prix INT
);

INSERT INTO plat (nom, prix) 
VALUES  ('Romazava', 7000),
        ('Ravitoto sy henakisoa', 8000),
        ('Akoho sy voanjo',8500),
        ('Mi sao', 6000),
        ('Soupe chinoise', 5000),
        ('Mofo gasy (les 4)', 1000),
        ('Ranon''ampango', 500);