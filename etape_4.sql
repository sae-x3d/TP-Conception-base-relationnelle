CREATE TABLE IF NOT EXISTS clients (
    id_client SERIAL PRIMARY KEY,
    nom VARCHAR(255)
);

INSERT INTO clients (nom)
VALUES  ('Jean Paul'),
        ('Jean Jacques'),
        ('Jean Joseph');

ALTER TABLE commande ADD COLUMN id_client INT;
ALTER TABLE commande ADD CONSTRAINT fk_id_client FOREIGN KEY (id_client) REFERENCES clients(id_client);

UPDATE commande set id_client=1 WHERE id_commande=1;
UPDATE commande set id_client=2 WHERE id_commande=2;
