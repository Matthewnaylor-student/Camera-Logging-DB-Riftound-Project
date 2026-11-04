CREATE TABLE sets (
    set_code TEXT PRIMARY KEY,
    set_name TEXT,
    release_date NUMERIC
)

CREATE TABLE cards (
    card_id INTEGER PRIMARY KEY,
    set_code TEXT,
    card_name TEXT,
    card_type TEXT,
    card_domain TEXT,
    energy_cost TEXT,
    power_cost TEXT,
    might TEXT,
    rarity TEXT,
    artist TEXT,
    FOREIGN KEY(set_code) REFERENCES sets(set_code)
)

CREATE TABLE card_domains (
    domain_name TEXT PRIMARY KEY,
    card_id INTEGER PRIMARY KEY,
    FOREIGN KEY(card_id) REFERENCES cards(card_id)
)

