-- Urbanisation vs. Energy consumption trend over time
SELECT
    year,
    AVG(urban_population_pct) AS global_urban_pct,
    AVG(energy_per_capita) AS global_energy_per_capita,
    AVG(fossil_share_energy) AS global_fossil_share,
    AVG(renewables_share_energy) AS global_renewables_share
FROM
    urbanization_energy
GROUP BY
    year
ORDER BY
    year;