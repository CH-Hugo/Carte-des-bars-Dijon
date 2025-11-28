CREATE TABLE quartiers (
    quartier_id SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE bars (
    bar_id SERIAL PRIMARY KEY,
    nom VARCHAR(150) NOT NULL,
    adresse VARCHAR(255) NOT NULL,
    quartier_id INT NOT NULL,

    CONSTRAINT fk_quartier
        FOREIGN KEY (quartier_id)
        REFERENCES quartiers(quartier_id)
);

CREATE TABLE bieres (
    biere_id SERIAL PRIMARY KEY,
    nom VARCHAR(150) NOT NULL,
    type VARCHAR(100) NOT NULL,
    categorie VARCHAR(100),
    degre_alcool NUMERIC(4,2) CHECK (degre_alcool >= 0)
);

CREATE TABLE prix (
    prix_id SERIAL PRIMARY KEY,
    bar_id INT NOT NULL,
    biere_id INT NOT NULL,
    prix NUMERIC(5,2) NOT NULL CHECK (prix > 0),

    CONSTRAINT fk_prix_bar
        FOREIGN KEY (bar_id)
        REFERENCES bars(bar_id),

    CONSTRAINT fk_prix_biere
        FOREIGN KEY (biere_id)
        REFERENCES bieres(biere_id),

    CONSTRAINT unique_bar_biere UNIQUE (bar_id, biere_id)
);