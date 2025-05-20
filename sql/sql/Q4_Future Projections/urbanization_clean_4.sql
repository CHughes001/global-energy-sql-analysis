CREATE TABLE urbanization_clean_4 AS
SELECT
    "Country (Entity)" AS country,
    "Year" AS year, -- This will include historical and projected years
    "Urban population (%) long-run with 2050 projections (OWID)" AS urban_population_pct
FROM
    Urbanization_Data;