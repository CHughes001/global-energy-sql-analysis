CREATE TABLE energy_clean_2 AS
SELECT
    country,
    year,
    iso_code, -- Useful for regional grouping
    population,
    gdp,
    primary_energy_consumption,
    energy_per_capita,
    energy_per_gdp,
    electricity_generation,
    per_capita_electricity,
    fossil_share_energy,
    renewables_share_energy,
    low_carbon_share_energy,
    greenhouse_gas_emissions, -- If reliable
    carbon_intensity_elec
FROM
    Energy_Data;
	
	
	
