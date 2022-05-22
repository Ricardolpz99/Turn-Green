-- Renewable Energy Table
CREATE TABLE renewable_share_energy (
  Entity varchar(100) PRIMARY KEY,
  Code varchar(3),
  Date_Year INTEGER,
  Renewable_per_sub_energy DECIMAL(6,3)
);

-- CO2 Emissions per capita
CREATE TABLE co2_emissions_per_capita (
  Entity varchar(100) PRIMARY KEY,
  Code varchar(3),
  Date_Year INTEGER,
  Annual_CO2_emissions_per_capita DECIMAL(7,4)
);

-- Query database to check successful upload
SELECT * FROM renewable_share_energy;
SELECT * FROM co2_emissions_per_capita;