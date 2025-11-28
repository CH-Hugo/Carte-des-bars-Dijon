# 1. Description fonctionnelle :

Tout d'abord il faut définir les entités principales, qui sont, les quartiers, les bars, les bières et le prix des bières.

Commeçons donc par les quartiers. Ils servent à regrouper les bars qui sont à Dijon dans une zone géographique précise.

Ensuite, on retrouve les bars, eux sont des établissements physiques dans lesquels des bières sont vendues.

Puis viennent le bières, qui sont des produits vendus dans les bars, chacune d'entre elles sont décrites par un nom, une catégorie et un degré d’alcool.

Pour terminer, ce sont les prix, qui représentent le prix d’une bière dans un bar. 
Le prix est la modélisation de la relation N–N entre les bars et les bières tout en stockant le prix pratiqué.


# Les relations :

Quartier -> Bar :
Pour ce qui est des relations, on y voit qu'un quartier peut contenir de 0 à N bars, chaque quartier à son nombre de bars différents, et donc Un bar appartient exactement à un quartier.

Bar <-> Bière via Prix :
La relation entre un bar et une bière via le prix se matérialise par le fait qu'un bar peut vendre 0 à N bières et qu'une bière peut être vendue dans 0 à N bars. D'ailleurs, la table prix montre cette relation et stocke le prix d’une bière dans un bar.

Prix -> Bar / Prix -> Bière :
Pour cette relation, chaque entrée de prix est rattachée à un bar et à une bière.


# Règles métier :

Les règles sur les bars :
Un bar doit obligatoirement appartenir à un quartier. Le nom et l'adresse doivent être unique pour éviter les doublons.

Les règles sur les bières :
Une bière a obligatoirement un nom, un type, une catégorie et un degré d’alcool.

Les règles sur les prix : 
Un prix est forcément positif. Un bar ne peut avoir qu’un seul prix actif par bière.


# Les attributs importants :

Les quartiers :
Les attributs des quartiers sont, son quartier_id (Primary Key) et son nom.

Les bars : 
Les attributs des  bars sont, son bar_id (Primary Key), son nom et son adresse et son quartier_id.

Les  bières :
Les attributs des  bières sont, sa biere_id (Primary Key), son nom, son type, sa catégorie et son degré d'alcool.

Les prix : 
Les attributs des  prix sont, son prix_id (Primary Key), son bar_id, sa biere_id, son prix.
