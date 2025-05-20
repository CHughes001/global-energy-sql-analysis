CREATE TABLE urbanization_clean_3 AS
SELECT
    "Country (Entity)" AS country,
    "Year" AS year,
    "Urban population (%) long-run with 2050 projections (OWID)" AS urban_population_pct
FROM
    Urbanization_Data;