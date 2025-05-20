CREATE TABLE energy_clean_3 AS
SELECT
    country,
    year,
    fossil_share_energy,
    renewables_share_energy,
    low_carbon_share_energy,
    fossil_share_elec,
    renewables_share_elec,
    low_carbon_share_elec
FROM
    Energy_Data;