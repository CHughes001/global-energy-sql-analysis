CREATE TABLE urbanization_clean_2 AS
SELECT
    "Country (Entity)" AS country,
    "Year" AS year,
    "Urban population (%) long-run with 2050 projections (OWID)" AS urban_population_pct,
    "Urban population long-run with 2050 projections (OWID)" AS urban_population_abs -- Could be useful for context
FROM
    Urbanization_Data;