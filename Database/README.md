# Database Specification

## Source
* [Renewable Energy](https://ourworldindata.org/renewable-energy)
* [CO₂ and Greenhouse Gas Emissions](https://ourworldindata.org/co2-and-other-greenhouse-gas-emissions)

## Schema
Our data base will consist of two tables, one for the Use of renewable energy by country and the second for the C02 and Greenhouse Gas Emissions by country and region.

### ERD model

![ERD](https://github.com/Ricardolpz99/Turn-Green/blob/main/Database/DB_ERD.PNG)


## Data description
The database is composed of two files; co-emissions-per-capita.csv and renewable-share-energy.csv. These two share three fields - entity, code and year - with which we can create a SQL table join.

## Data Storage
The data files will be stored in an AWS RDS Database and linked to pgAdmin to create the database tables and relationships between the data.

## Remote RDS connection
![pgAdmin](https://github.com/Ricardolpz99/Turn-Green/blob/main/Database/pgAdmin_connection.PNG)
