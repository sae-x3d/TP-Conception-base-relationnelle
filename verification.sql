-- Etape 1
SELECT * FROM plat ORDER BY prix DESC;

-- Etape 2
SELECT c.nom, COUNT(*) AS nombre FROM plat JOIN categorie AS c on c.id_categorie=plat.id_categorie GROUP BY c.id_categorie;   

-- Etape 3
SELECT c.id_commande,date_commande,sum(prix) AS montant_Total
FROM commande AS c
JOIN platcommande AS cd ON c.id_commande = cd.id_commande
JOIN plat AS p ON cd.id_plat = p.id_plat
JOIN categorie AS cat ON p.id_categorie = cat.id_categorie GROUP BY c.id_commande;

-- Etape 4
SELECT id_commande, COALESCE(nom, 'Client de passage') AS Client, date_commande FROM commande AS c LEFT JOIN clients AS cl ON c.id_client=cl.id_client;    