# Database Specification

## Source
* [Renewable Energy](https://ourworldindata.org/renewable-energy)
* [CO₂ and Greenhouse Gas Emissions](https://ourworldindata.org/co2-and-other-greenhouse-gas-emissions)

## Data description
Our data base consists of three tables, which were the result of merging two datasets each. They are described below:
1. co2_per_capita_vs_green_energy
* co-emissions-per-capita.csv
* renewable-share-energy.csv

2. co2_per_capita_vs_green_electricity
* co-emissions-per-capita.csv
* renewable-electricity-per-capita.csv

3. co2_per_capita_vs_green_energy_gen
* co-emissions-per-capita.csv
* renewable-energy-gen.csv

### Schema (ERD model)

![ERD](https://github.com/Ricardolpz99/Turn-Green/blob/main/Database/DB_ERD_V2.PNG)


## ETL Pipeline
* *Extraction* - The data files are extracted from the original site and stored in the Github repository.
* *Transfor* - The datasets are cleaned up by removing null values and assigning missing values to columns 'Code' and 'Entity'. This is done in notebook Clean_data_RE_gen.ipynb
* *Load* - Finally the cleaned dataframes are loaded to an AWS RDS which can be accessed by establishing a connection between the RDS and pgAdmin4 using the sqlAchemy library.
	* On pgAdmin4 we are able to join two tables: co2_per_capita_vs_green_energy_gen and co2_per_capita_vs_green_electricity which are linked by the 'Code' column.

![pgAdmin](https://github.com/Ricardolpz99/Turn-Green/blob/week_2/circle_database_integration/Database/pgAdmin_joinTables.PNG)
