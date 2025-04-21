-- Drop existing tables to ensure a clean setup (optional)
DROP TABLE IF EXISTS total_catch;
DROP TABLE IF EXISTS fish_exports;
DROP TABLE IF EXISTS sst_west;
DROP TABLE IF EXISTS sst_east;
DROP TABLE IF EXISTS sst_south;
DROP TABLE IF EXISTS foreign_catch;
DROP TABLE IF EXISTS ice_melt_sst;

-- Create tables with explicit schema
CREATE TABLE total_catch (
    Year INTEGER NOT NULL,
    Quarter TEXT NOT NULL,
    Unit TEXT,
    Total_Catch INTEGER,
    PRIMARY KEY (Year, Quarter)
);

CREATE TABLE fish_exports (
    Year INTEGER NOT NULL,
    Quarter TEXT NOT NULL,
    Fish_Export_Value_Million_Kr INTEGER,
    PRIMARY KEY (Year, Quarter)
);

CREATE TABLE sst_west (
    Year INTEGER NOT NULL,
    Quarter TEXT NOT NULL,
    Sea_Surface_Temp_C_West REAL,
    Melt_Active_West INTEGER,
    Melt_Index_West REAL,
    PRIMARY KEY (Year, Quarter)
);

CREATE TABLE sst_east (
    Year INTEGER NOT NULL,
    Quarter TEXT NOT NULL,
    Sea_Surface_Temp_C_East REAL,
    Melt_Active_East INTEGER,
    Melt_Index_East REAL,
    PRIMARY KEY (Year, Quarter)
);

CREATE TABLE sst_south (
    Year INTEGER NOT NULL,
    Quarter TEXT NOT NULL,
    Sea_Surface_Temp_C_South REAL,
    Melt_Active_South INTEGER,
    Melt_Index_South REAL,
    PRIMARY KEY (Year, Quarter)
);

CREATE TABLE foreign_catch (
    Year INTEGER NOT NULL,
    Quarter TEXT NOT NULL,
    Unit TEXT,
    Foreign_Catch INTEGER,
    PRIMARY KEY (Year, Quarter)
);

CREATE TABLE ice_melt_sst (
    Year INTEGER NOT NULL,
    Quarter TEXT NOT NULL,
    Ice_Melt_Rate_East REAL,
    Ice_Melt_Rate_West REAL,
    SST_East REAL,
    SST_West REAL,
    PRIMARY KEY (Year, Quarter)
);