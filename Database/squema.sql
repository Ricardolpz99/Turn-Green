-- Table 1
create table co2_vs_renewable_energy (
	Entity varchar(100),
	Code varchar(4),
	_Year int,
	Annual_co2_per_capita decimal(7,4),
	Renewables_percentage decimal(6,3),
	primary key (Code)
);

-- Table 2
create table co2_vs_renewable_electricity(
	Entity varchar(100),
	Code varchar(4),
	_Year int,
	Annual_co2_per_capita decimal(7,4),
	Renewables_elect_per_capita decimal(6,3),
	primary key (Code)
);

-- Table 3
create table co2_vs_renewable_energy_generation(
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
SELECT * FROM co2_vs_renewable_energy;
SELECT * FROM co2_vs_renewable_electricity;
SELECT * FROM co2_vs_renewable_energy_generation;

-- Delete tables
drop table co2_vs_renewable_energy;
drop table co2_vs_renewable_electricity;
drop table co2_vs_renewable_energy_generation;

ALTER TABLE co2_vs_renewable_energy
  DROP COLUMN index;

ALTER TABLE co2_vs_renewable_energy
  DROP COLUMN "Unnamed: 0";

ALTER TABLE co2_vs_renewable_electricity
  DROP COLUMN index;
 
ALTER TABLE co2_vs_renewable_electricity
  DROP COLUMN "Unnamed: 0";


CREATE TABLE co2_vs_green_energy AS
SELECT t1.* 
  FROM co2_vs_renewable_energy t1
    left JOIN co2_vs_renewable_electricity t2 ON 't1.Annual_co2_per_capita' = 't2.Annual_co2_per_capita'
	
SELECT * FROM co2_vs_green_energy;
drop table co2_vs_green_energy;

-- New join
CREATE TABLE co2_and_green_gen_types AS
SELECT t1.* 
  FROM co2_vs_renewable_energy_generation t1
    left JOIN co2_vs_renewable_electricity t2 ON 't1.Code' = 't2.Code'
	
SELECT * FROM co2_and_green_gen_types;
drop table co2_and_green_gen_types;

create table energies as
SELECT t1.* 
  FROM co2_vs_renewable_energy t1
	LEFT JOIN co2_vs_renewable_electricity t2 ON 't1.Code' = 't2.Code'
UNION
SELECT t1.* 
  FROM co2_vs_renewable_energy t1
	RIGHT JOIN co2_vs_renewable_electricity t2 ON 't1.Code' = 't2.Code'
	
select * from energies;
drop table energies;
