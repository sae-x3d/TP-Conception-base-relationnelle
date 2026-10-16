PLAT( **id_plat**, nom, prix, #id_categorie (ajoute));
CATEGORIE(**id_categorie**, nom);
COMMANDE(**id_commande**, date_commande);
PLATCOMMANDE(**#id_commande**, **#id_plat**, Quantite);
