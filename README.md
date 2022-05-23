# Turn-Green

## Storytelling

This is the GitHub repository for our Tecnologico de Monterrey Boot Camp group's final project.

## Turn Green "The Impact of Renewable Energy on the CO2 Emissions"
One strategy for achieving the sustainable development goals is to close the gap between carbon emissions and economic development.

Group Members:
Ricardo López, Irving Hernández, Armando, Daniela Rodríguez

While members are assigned specific roles, we all work together on each part of the project

## Selected Topic - Renewable Energy Impact on the World

## Overview: 
To reduce CO2 emissions and local air pollution, the world must rapidly transition to low-carbon energy sources such as nuclear and renewable technology.
Renewable energy will be critical in decarbonizing our energy systems in the future decades.

## Objective: 
The Turn Green Tool predicts whether the CO2 emmissions will rise or fall in at least the principle countries of the world by examining renewable usage and co2 gas emissions patterns data.

When looking for sustainable pattern policies, for example, someone will be able to compare the renewable energy implementation, Co2 gases emissions and climate change impact of the principle countries of the worlGitd. This could help kids comprehend the similarities and differences between countries sustainable energy policies and help the world makequickly decisiones

## Questions We'd Like Answered:

- Based on the evidence provided, should we expect CO2 emissions to rise or fall in the coming years?
- *This prediction is based on renewable usage per country.
- Which other continental country has the same co2 emission per capita as a specified country?
- What is a country's proclivity for implementing renewable energy?

## Database Specification
[Project Database Specification](Database/README.md)

## Source of Data
Our data will be downloaded from 
Renweable data: https://ourworldindata.org/renewable-energy
Co2 Emissions and GreenHouse Emissions per Capita:  https://ourworldindata.org/co2-and-other-greenhouse-gas-emissions
All the formats will be downloades as a CSV format.
Variable time span	1850 – 2019
Data published by	Met Office Hadley Centre

## ML Mockup
### Which model we choose and why?

Based on the information available between the amount of C02 per capita generated and the distribution of renewable energy used in the selected countries, we will use linear regression as a prediction model from  module sklearn and class linear_model, This model will be used to predict and will evaluate the relationship between the renewable energy used by an entity and its increase or fall in the amount of C02 generated.
We want to evaluate how close the relationship is between the two available variables, both quantities are continuous, on the one hand, the % of use of renewable energies in the selected entities can be taken as an independent variable, while the amount of C02 will be evaluated as a dependent variable.

### How are we training our model?
Based on the information in our database; co-emissions-per-capita (3).csv and renewable-share-energy.csv, We generate a DF that joins both files and from there we use the fit function of module sklearn and class linear_model.

### What is the model's accuracy?
The coefficient of determination can be used to measure the variability of the amount of renewable energies in relation to the production of Co2 per capita. the value is between 0 and 1. It measures how strongly these variables are related. 

### How does this model work?

The model seeks to make a prediction of the levels of C02 generated, when the levels of use of renewable energies increase. The model makes a prediction based on the patterns it previously learned from the databse.


## Possible Tools

We will be working with the next tools:Jupyter Notebook, Github

## Possible Languages
Python 

## Possible Technologies
SQL And Tableau for Visualization

