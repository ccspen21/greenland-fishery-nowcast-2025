DROP TABLE IF EXISTS fish_catch_data;

CREATE TABLE fish_catch_data (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    year INTEGER,
    quarter TEXT,
    total_catch INTEGER,
    fish_export_value_million_kr REAL,
    melt_sst_interaction_west REAL,
    melt_sst_interaction_east REAL,
    melt_sst_interaction_south REAL,
    foreign_catch INTEGER
);
