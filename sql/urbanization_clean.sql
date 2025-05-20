-- Create a cleaned urbanization table with only needed columns
CREATE TABLE urbanization_clean AS
SELECT 
    "Entity" AS country,
    "Year" AS year,
    -- Choose one urban population percentage column (using the one with projections)
    "Urban population (%) long-run with 2050 projections (OWID)" AS urban_population_pct,
    "Urban population long-run with 2050 projections (OWID)" AS urban_population_total
FROM Urbanization_Data;