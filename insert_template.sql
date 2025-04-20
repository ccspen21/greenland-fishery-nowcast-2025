-- Template for inserting a single row of data
INSERT INTO fish_catch_data (
    year, quarter, total_catch,
    fish_export_value_million_kr,
    melt_sst_interaction_west,
    melt_sst_interaction_east,
    melt_sst_interaction_south,
    foreign_catch
)
VALUES (?, ?, ?, ?, ?, ?, ?, ?);
