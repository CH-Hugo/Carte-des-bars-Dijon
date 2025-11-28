erDiagram
    QUARTIER {
        int quartier_id PK
        string nom
    }

    BAR {
        int bar_id PK
        string nom
        string adresse
        int quartier_id FK
    }

    BIERE {
        int biere_id PK
        string nom
        string type
        string categorie
        float degres
    }

    PRIX {
        int prix_id PK
        int bar_id FK
        int biere_id FK
        float prix
    }

    QUARTIER ||--o{ BAR : contient
    BAR ||--o{ PRIX : propose
    BIERE ||--o{ PRIX : "est vendue dans"
