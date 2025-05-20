-- Creating a view for future queries. 
-- u. represents the urbanization_clean dataset, whereas the e. is energy_clean dataset
CREATE VIEW urbanization_energy AS
SELECT 
    u.country,
    u.year,
    u.urban_population_pct,
    u.urban_population_total,
    e.population,
    e.gdp,
    e.energy_per_capita,
    e.primary_energy_consumption,
    e.fossil_share_energy,
    e.renewables_share_energy,
    -- Calculate additional metrics
    e.primary_energy_consumption / NULLIF(e.population, 0) AS energy_consumption_per_person,
    e.gdp / NULLIF(e.population, 0) AS gdp_per_capita
FROM 
    urbanization_clean u
JOIN 
    energy_clean e ON u.country = e.country AND u.year = e.year;  --merges table based on matching country and year
