# Turn-Green

## Data Base Mockup

## ML Mockup
# Which model we choose and why?

Based on the information available between the amount of C02 per capita generated and the distribution of renewable energy used in the selected countries, we will use linear regression as a prediction model from  module sklearn and class linear_model, This model will be used to predict and will evaluate the relationship between the renewable energy used by an entity and its increase or fall in the amount of C02 generated.
We want to evaluate how close the relationship is between the two available variables, both quantities are continuous, on the one hand, the % of use of renewable energies in the selected entities can be taken as an independent variable, while the amount of C02 will be evaluated as a dependent variable.

# How are we training our model?
Based on the information in our database; co-emissions-per-capita (3).csv and renewable-share-energy.csv, We generate a DF that joins both files and from there we use the fit function of module sklearn and class linear_model.

# What is the model's accuracy?
The coefficient of determination can be used to measure the variability of the amount of renewable energies in relation to the production of Co2 per capita. the value is between 0 and 1. It measures how strongly these variables are related. 

# How does this model work?

The model seeks to make a prediction of the levels of C02 generated, when the levels of use of renewable energies increase. The model makes a prediction based on the patterns it previously learned from the databse.

 
## Storytelling
