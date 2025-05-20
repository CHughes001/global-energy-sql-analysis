CREATE TABLE energy_clean_4 AS
SELECT
    country,
    year, -- This will be historical years from the energy dataset
    population,
    gdp,
    energy_per_capita,
    primary_energy_consumption -- Adding this for a broader base
FROM
    Energy_Data;