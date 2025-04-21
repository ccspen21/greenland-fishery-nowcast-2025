-- DML script to populate the greenland_fishery.db database
-- Data for 2011 Q1-Q4 as a sample (extend to 2011-2024 in practice)

-- Populate total_catch
INSERT INTO total_catch (Year, Quarter, Unit, Total_Catch) VALUES
(2011, 'Q1', 'Ton', 50000),
(2011, 'Q2', 'Ton', 55000),
(2011, 'Q3', 'Ton', 60000),
(2011, 'Q4', 'Ton', 52000);

-- Populate fish_exports
INSERT INTO fish_exports (Year, Quarter, Fish_Export_Value_Million_Kr) VALUES
(2011, 'Q1', 300),
(2011, 'Q2', 320),
(2011, 'Q3', 350),
(2011, 'Q4', 310);

-- Populate sst_west
INSERT INTO sst_west (Year, Quarter, Sea_Surface_Temp_C_West, Melt_Active_West, Melt_Index_West) VALUES
(2011, 'Q1', 0.2, 0, 0.05),
(2011, 'Q2', 1.0, 1, 0.25),
(2011, 'Q3', 2.5, 1, 0.625),
(2011, 'Q4', 0.8, 1, 0.2);

-- Populate sst_east
INSERT INTO sst_east (Year, Quarter, Sea_Surface_Temp_C_East, Melt_Active_East, Melt_Index_East) VALUES
(2011, 'Q1', 0.3, 0, 0.075),
(2011, 'Q2', 1.2, 1, 0.3),
(2011, 'Q3', 2.8, 1, 0.7),
(2011, 'Q4', 0.9, 1, 0.225);

-- Populate sst_south
INSERT INTO sst_south (Year, Quarter, Sea_Surface_Temp_C_South, Melt_Active_South, Melt_Index_South) VALUES
(2011, 'Q1', 0.5, 0, 0.125),
(2011, 'Q2', 1.5, 1, 0.375),
(2011, 'Q3', 3.0, 1, 0.75),
(2011, 'Q4', 1.0, 1, 0.25);

-- Populate foreign_catch
INSERT INTO foreign_catch (Year, Quarter, Unit, Foreign_Catch) VALUES
(2011, 'Q1', 'Ton', 10000),
(2011, 'Q2', 'Ton', 12000),
(2011, 'Q3', 'Ton', 15000),
(2011, 'Q4', 'Ton', 11000);

-- Populate ice_melt_sst (using the formula: Ice_Melt_Rate = 0.7 * Melt_Index + 0.3 * (SST + 2) / 22)
INSERT INTO ice_melt_sst (Year, Quarter, Ice_Melt_Rate_East, Ice_Melt_Rate_West, SST_East, SST_West) VALUES
(2011, 'Q1', 0.0525 + 0.3 * (0.3 + 2) / 22, 0.035 + 0.3 * (0.2 + 2) / 22, 0.3, 0.2),
(2011, 'Q2', 0.21 + 0.3 * (1.2 + 2) / 22, 0.175 + 0.3 * (1.0 + 2) / 22, 1.2, 1.0),
(2011, 'Q3', 0.49 + 0.3 * (2.8 + 2) / 22, 0.4375 + 0.3 * (2.5 + 2) / 22, 2.8, 2.5),
(2011, 'Q4', 0.1575 + 0.3 * (0.9 + 2) / 22, 0.14 + 0.3 * (0.8 + 2) / 22, 0.9, 0.8);