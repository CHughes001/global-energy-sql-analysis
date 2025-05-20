CREATE VIEW urbanization_energy_4 AS
SELECT
    u."Country (Entity)" AS country,
    u."Year" AS year, -- This 'year' will include historical and projected years from Urbanization_Data
    u."Urban population (%) long-run with 2050 projections (OWID)" AS urban_population_pct,
    e.population AS historical_population, -- Data from Energy_Data (likely historical)
    e.gdp AS historical_gdp,                -- Data from Energy_Data (likely historical)
    e.energy_per_capita AS historical_energy_per_capita,
    e.primary_energy_consumption AS historical_primary_energy_consumption
FROM
    urbanization_clean_4 u
LEFT JOIN
    energy_clean_4 e
ON
    u."Country (Entity)" = e.country AND u."Year" = e.year;