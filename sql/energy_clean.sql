-- Create a cleaned energy table with only needed columns
CREATE TABLE energy_clean AS
SELECT 
    country,
    year,
    population,
    gdp,
    energy_per_capita,
    primary_energy_consumption,
    fossil_share_energy,
    renewables_share_energy
FROM Energy_Data;