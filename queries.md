# 1. Prix moyen de la bière par quartier

SELECT 
    q.nom AS quartier,
    ROUND(AVG(p.prix), 2) AS prix_moyen
FROM prix p
JOIN bars b ON p.bar_id = b.bar_id
JOIN quartiers q ON b.quartier_id = q.quartier_id
GROUP BY q.nom
ORDER BY prix_moyen DESC;

# 2. Bars vendant l'IPA la moins chère

WITH ipa_min AS (
    SELECT MIN(p.prix) AS min_prix
    FROM prix p
    JOIN bieres bi ON p.biere_id = bi.biere_id
    WHERE bi.type = 'IPA'
)
SELECT DISTINCT b.nom AS bar, bi.nom AS biere, p.prix
FROM prix p
JOIN bieres bi ON p.biere_id = bi.biere_id
JOIN bars b ON p.bar_id = b.bar_id
JOIN ipa_min im ON p.prix = im.min_prix
WHERE bi.type = 'IPA';


# 3. Bières vendues dans ≥ 5 bars :

SELECT bi.nom AS biere, COUNT(DISTINCT p.bar_id) AS nb_bars
FROM prix p
JOIN bieres bi ON p.biere_id = bi.biere_id
GROUP BY bi.nom
HAVING COUNT(DISTINCT p.bar_id) >= 5
ORDER BY nb_bars DESC;


# 4. Bars sans bière à moins de 6€

SELECT b.nom AS bar
FROM bars b
WHERE NOT EXISTS (
    SELECT 1
    FROM prix p
    WHERE p.bar_id = b.bar_id
      AND p.prix < 6
)
ORDER BY b.nom;


# 5. Top bar avec panier moyen maximum

SELECT b.nom AS bar, ROUND(AVG(p.prix),2) AS panier_moyen
FROM bars b
JOIN prix p ON b.bar_id = p.bar_id
GROUP BY b.bar_id, b.nom
ORDER BY panier_moyen DESC
LIMIT 1;
