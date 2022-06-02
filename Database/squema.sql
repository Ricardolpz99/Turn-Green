-- Table 1
create table co2_per_capita_vs_green_energy (
	Entity varchar(100),
	Code varchar(4),
	_Year int,
	Annual_co2_per_capita decimal(7,4),
	Renewables_percentage decimal(6,3),
	primary key (Code)
);

-- Table 2
create table co2_per_capita_vs_green_electricity(
	Entity varchar(100),
	Code varchar(4),
	_Year int,
	Annual_co2_per_capita decimal(7,4),
	Renewables_elect_per_capita decimal(6,3),
	primary key (Code)
);

-- Table 3
create table co2_per_capita_vs_green_energy_gen(
	Entity varchar(100),
	Code varchar(4),
	_Year int,
	Annual_co2_per_capita decimal(7,4),
	Solar_Gen decimal(8,4),
	Wind_Gen decimal(8,4),
	Hydro_Gen decimal(8,4),
	GeoBiomas_Gen decimal(8,4),
	primary key (Code)
)

-- Query database to check successful upload
SELECT * FROM co2_vs_renewable_electricity;
SELECT * FROM co2_vs_renewable_energy;
SELECT * FROM co2_vs_renewable_energy_generation;

-- Delete tables
drop table co2_vs_renewable_electricity;
drop table co2_vs_renewable_energy;
drop table co2_vs_renewable_energy_generation;
