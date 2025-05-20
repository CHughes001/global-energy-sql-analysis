CREATE VIEW urbanization_energy_2 AS
SELECT
    u."Country (Entity)" AS country,
    u."Year" AS year,
    u."Urban population (%) long-run with 2050 projections (OWID)" AS urban_population_pct,
    u."Urban population long-run with 2050 projections (OWID)" AS urban_population_abs,
    e.iso_code,
    e.population,
    e.gdp,
    e.primary_energy_consumption,
    e.energy_per_capita,
    e.energy_per_gdp,
    e.electricity_generation,
    e.per_capita_electricity,
    e.fossil_share_energy,
    e.renewables_share_energy,
    e.low_carbon_share_energy,
    e.greenhouse_gas_emissions,
    e.carbon_intensity_elec
FROM
    urbanization_clean_2 u
INNER JOIN
    energy_clean_2 e
ON
    u."Country (Entity)" = e.country AND u."Year" = e.year;