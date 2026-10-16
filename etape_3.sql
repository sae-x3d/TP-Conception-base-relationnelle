CREATE TABLE IF NOT EXISTS commande (
    id_commande SERIAL PRIMARY KEY,
    date_commande TIMESTAMP
);

CREATE TABLE IF NOT EXISTS platcommande (
    id_commande INT,
    id_plat INT,
    quantite INT,
    PRIMARY KEY (id_commande, id_plat),
    CONSTRAINT fk_id_commande FOREIGN KEY (id_commande) REFERENCES commande(id_commande) ON DELETE CASCADE,
    CONSTRAINT fk_id_plat FOREIGN KEY (id_plat) REFERENCES plat(id_plat) ON DELETE CASCADE
);

INSERT INTO commande (date_commande)
VALUES  ('2026-10-20 20:02:20'),
        ('2026-02-01 10:20:10');

INSERT INTO platcommande(id_commande, id_plat, quantite)
VALUES  (1, 1, 3),
        (1, 2, 1),
        (1, 3, 5),
        (2, 1, 1);
