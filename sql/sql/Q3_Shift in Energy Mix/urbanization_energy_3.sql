CREATE VIEW urbanization_energy_3 AS
SELECT
    u."Country (Entity)" AS country,
    u."Year" AS year,
    u."Urban population (%) long-run with 2050 projections (OWID)" AS urban_population_pct,
    e.fossil_share_energy,
    e.renewables_share_energy,
    e.low_carbon_share_energy,
    e.fossil_share_elec,
    e.renewables_share_elec,
    e.low_carbon_share_elec
FROM
    urbanization_clean_3 u
INNER JOIN
    energy_clean_3 e
ON
    u."Country (Entity)" = e.country AND u."Year" = e.year;