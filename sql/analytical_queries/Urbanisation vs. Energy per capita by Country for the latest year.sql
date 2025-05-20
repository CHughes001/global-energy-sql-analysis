-- Urbanisation vs. Energy per capita by Country for the latest year

SELECT 
    country,
    urban_population_pct,
    energy_per_capita,
    fossil_share_energy,
    renewables_share_energy,
    gdp_per_capita
FROM 
    urbanization_energy
WHERE 
    year = (SELECT MAX(year) FROM urbanization_energy)
ORDER BY 
    urban_population_pct DESC;