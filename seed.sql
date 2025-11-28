INSERT INTO quartiers (nom) VALUES
('Centre Ville'),
('Darquilly'),
('Les Grésilles'),
('Montchapet'),
('Port du Canal'),
('Université'),
('Toison d''Or'),
('Fontaine d''Ouche'),
('Talant'),
('Parc des Sports');

INSERT INTO bars (nom, adresse, quartier_id) VALUES
('Le Berthom', '12 Rue Jules Mercier', 1),
('La Brasserie du Canal', '5 Quai Nicolas Rolin', 5),
('The Barbarian', '21 Rue Monge', 1),
('Le Trou', '14 Rue Berbisey', 1),
('Le Carpe Diem', '8 Rue Auguste Comte', 1),
('Le Sherwood', '26 Rue François Rude', 1),
('Le 3D Bar', '4 Boulevard de Strasbourg', 3),
('Campus Bar', '2 Avenue Université', 6),
('Le Village', '48 Avenue Eiffel', 6),
('Le Zythum', '14 Rue Audra', 4),
('La Bodega', '15 Rue Guillaume Tell', 4),
('Bar du Stade', '6 Avenue du Stade', 10),
('O’Bareuzai', '35 Rue Carnot', 1),
('La Fabrique', '3 Rue des Godrans', 1),
('Pub MacCarthy', '11 Rue Bannelier', 1),
('Le Meltdown', '10 Rue Vannerie', 1),
('L’Engrenage', '23 Rue d''Auxonne', 5),
('Le Black Owl', '18 Rue Chaudronnerie', 1),
('Le Brooklyn', '19 Rue Amiral Roussin', 1),
('Craft District', '3 Rue Quentin', 2);

INSERT INTO bieres (nom, type, categorie, degre_alcool) VALUES
('IPA Bourgogne', 'IPA', 'Craft', 6.5),
('Blonde du Canal', 'Blonde', 'Classique', 5.0),
('Ambrée des Grésilles', 'Ambrée', 'Craft', 6.2),
('Stout Nuit Noire', 'Stout', 'Spéciale', 7.5),
('Triple Montchapet', 'Triple', 'Abbaye', 8.0),
('Weiss Université', 'Blanche', 'Blanche', 4.8),
('Red Ale Dijon', 'Red Ale', 'Craft', 5.5),
('Pils Talant', 'Pils', 'Classique', 4.5),
('IPA Cascade', 'IPA', 'Craft', 6.8),
('Blanche Citron', 'Blanche', 'Fruitée', 4.2),
('Lager Canal', 'Lager', 'Classique', 5.1),
('Brune Forte', 'Brune', 'Spéciale', 7.8),
('Golden Ale Dijon', 'Golden Ale', 'Classique', 5.2),
('Session IPA', 'IPA', 'Craft', 4.5),
('Porter Roussin', 'Porter', 'Spéciale', 6.0),
('Saison Été', 'Saison', 'Farmhouse', 5.8),
('Hefeweizen', 'Blanche', 'Blanche', 5.0),
('American Pale Ale', 'Pale Ale', 'Craft', 5.4),
('Black IPA', 'IPA', 'Spéciale', 7.0),
('Smoked Ale', 'Ambrée', 'Spéciale', 6.6),
('Milk Stout', 'Stout', 'Spéciale', 6.2),
('Brown Ale', 'Brune', 'Classique', 5.8),
('Irish Red', 'Red Ale', 'Classique', 4.8),
('Gose Saline', 'Sour', 'Spéciale', 4.3),
('Lambic Pêche', 'Fruitée', 'Spéciale', 3.8),
('IPA Mosaic', 'IPA', 'Craft', 6.3),
('Double IPA', 'IPA', 'Spéciale', 8.5),
('Pilsner Fraîche', 'Pils', 'Classique', 4.7),
('Tripel Blonde', 'Triple', 'Abbaye', 8.2),
('Quadrupel Noire', 'Quadrupel', 'Abbaye', 10.0),
('Hoppy Lager', 'Lager', 'Craft', 5.4),
('Imperial Stout', 'Stout', 'Spéciale', 9.2),
('Berliner Weisse', 'Sour', 'Blanche', 3.5),
('Blonde Classique', 'Blonde', 'Classique', 5.0),
('NEIPA Cloudy', 'IPA', 'Craft', 6.2),
('Sour Framboise', 'Sour', 'Fruitée', 4.1),
('Amber Classic', 'Ambrée', 'Classique', 5.6),
('White IPA', 'IPA', 'Craft', 5.8),
('Honey Ale', 'Ale', 'Fruitée', 5.3),
('Chocolate Porter', 'Porter', 'Spéciale', 6.9);


INSERT INTO prix (bar_id, biere_id, prix) VALUES

(1, 1, 6.50), (1, 2, 5.00), (1, 3, 6.20), (1, 5, 7.80),
(1, 9, 6.90), (1, 14, 5.20), (1, 26, 6.40), (1, 33, 5.00),

(2, 1, 6.20), (2, 4, 7.20), (2, 7, 5.80), (2, 10, 4.80),
(2, 11, 5.60), (2, 18, 5.90), (2, 19, 7.10), (2, 34, 5.10),

(3, 2, 5.10), (3, 6, 4.90), (3, 8, 5.30), (3, 16, 6.10),
(3, 20, 7.00), (3, 29, 8.10), (3, 31, 5.60), (3, 36, 5.40),

(4, 3, 6.20), (4, 15, 6.80), (4, 17, 5.10), (4, 22, 5.70),
(4, 28, 4.90), (4, 30, 9.00), (4, 39, 6.30), (4, 40, 6.80),

(5, 4, 7.50), (5, 11, 5.40), (5, 12, 7.80), (5, 21, 6.00),
(5, 24, 4.50), (5, 33, 4.90), (5, 38, 5.80), (5, 18, 6.00),

(6, 5, 7.90), (6, 9, 6.30), (6, 10, 4.60), (6, 14, 5.50),
(6, 27, 8.10), (6, 32, 8.90), (6, 34, 5.40), (6, 37, 4.70),

(7, 6, 4.80), (7, 7, 5.70), (7, 8, 5.40), (7, 13, 5.20),
(7, 25, 3.90), (7, 29, 8.00), (7, 35, 6.10), (7, 39, 6.20),

(8, 1, 6.00), (8, 2, 5.10), (8, 3, 6.00), (8, 4, 7.40),
(8, 14, 5.30), (8, 26, 6.10), (8, 33, 4.80), (8, 40, 6.50),

(9, 10, 4.50), (9, 11, 5.20), (9, 16, 5.80), (9, 17, 5.10),
(9, 19, 7.00), (9, 23, 4.40), (9, 34, 5.20), (9, 36, 5.40),

(10, 4, 7.60), (10, 5, 7.90), (10, 12, 7.30), (10, 15, 6.20),
(10, 20, 6.90), (10, 32, 8.70), (10, 37, 4.60), (10, 39, 6.10),

(11, 6, 4.90), (11, 8, 5.20), (11, 9, 6.00), (11, 13, 5.40),
(11, 22, 5.80), (11, 29, 8.40), (11, 30, 8.90), (11, 40, 6.40),

(12, 2, 4.90), (12, 3, 6.10), (12, 7, 5.60), (12, 10, 4.70),
(12, 16, 5.80), (12, 33, 4.90), (12, 37, 4.70), (12, 25, 4.00),

(13, 1, 6.20), (13, 14, 5.50), (13, 18, 5.60), (13, 21, 6.20),
(13, 24, 4.60), (13, 26, 6.20), (13, 39, 6.60), (13, 40, 6.90),

(14, 4, 7.40), (14, 6, 4.90), (14, 7, 5.70), (14, 13, 5.30),
(14, 31, 5.50), (14, 36, 5.40), (14, 38, 5.60), (14, 19, 7.20),

(15, 5, 7.80), (15, 8, 5.40), (15, 10, 4.70), (15, 16, 5.90),
(15, 22, 5.70), (15, 25, 4.20), (15, 28, 4.90), (15, 33, 5.00),

(16, 3, 6.10), (16, 9, 6.20), (16, 12, 7.60), (16, 17, 5.30),
(16, 27, 8.60), (16, 31, 5.40), (16, 35, 6.10), (16, 40, 6.50),

(17, 1, 6.30), (17, 6, 4.80), (17, 7, 5.90), (17, 10, 4.80),
(17, 19, 7.40), (17, 24, 4.50), (17, 28, 4.80), (17, 38, 5.90),

(18, 2, 5.10), (18, 3, 6.20), (18, 8, 5.60), (18, 13, 5.40),
(18, 20, 7.10), (18, 23, 4.40), (18, 29, 8.20), (18, 39, 6.50),

(19, 5, 7.70), (19, 11, 5.20), (19, 14, 5.30), (19, 16, 5.80),
(19, 18, 5.70), (19, 33, 5.00), (19, 37, 4.80), (19, 40, 6.40),

(20, 1, 6.50), (20, 4, 7.50), (20, 10, 4.80), (20, 12, 7.40),
(20, 17, 5.20), (20, 31, 5.40), (20, 38, 5.90), (20, 39, 6.20);
