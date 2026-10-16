## Etape 1
- J'ai utilise le type INTEGER (INT) pour le prix car on a precise dans l'ennonce qu'il fallait utiliser des entiers, INT et pas SMALINT pour avoir une plage de valeur assez large.
- Pour l'identifiant j ai choisi id_plat

## Etape 2
- On a pas ajoute une colonne categorie VARCHAR(50) directement pour pouvoir recuperer les categories existants pendant la creation de nouveaux plats et eviter de saisir le champ categorie manuellemente et de se tromper 
- exemple si un utilisateur ecrit Boison au lieu de Boisson dans la categorie, cela fausserait la table et le plat concerne ne serait pas pris en compte lors d un filtre WHERE categorie = 'BOISSON'

## Etape 3
- Mettre la quantite dans la table platcommande 

## Etape 4
- La cle etrangere n est pas NOT NULL.
- Il faut utiliser LEFT JOIN.