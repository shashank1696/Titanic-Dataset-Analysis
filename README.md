# Titanic-Dataset-Analysis
To Predicate the probability for survival of the Titanic passengers using Logistic Regression Algorithm

 ## Introduction
This analysis attempts to predicate the probability for survival of the Titanic passengers. In order to do this, I will use the different features available about the passengers, use a subset of the data to train an algorithm and then run the algorithm on the rest of the data set to get a prediction.

In this analysis i have tried to answer some of the questions such as:

1) What is the passenger’s chance of survival?

2) Prediction of survival for the entire ship.
 
 ## Overview of the titanic dataset
  
 ### The data has been split into two groups:

   1) Training set (train.csv)
   2) Test set (test.csv)
   ## Problem Statement
  The training set should be used to build your machine learning models. For the training set, the provided outcome (also known as the “ground truth”) for each passenger. The model will be based on “features” like passengers’ gender and class.

  The test set should be used to see how well the model performs on unseen data. For the test set, do not provide the ground truth for each passenger. It is your job to predict these outcomes. For each passenger in the test set, use the model that is trained to predict whether or not they survived the sinking of the Titanic.

  We also include gender_submission.csv, a set of predictions that assume all and only female passengers survive, as an example of what a submission file should look like.

 ## Data Dictionary
##### VariableDefinitionKey 
1) survival: Survival 0 = No, 1 = Yes
2) pclass: Ticket class 1 = 1st, 2 = 2nd, 3 = 3rd 
3) sex: 'Male' or 'Female' 
4) Age: Age in years 
5) sibsp: Siblings / spouses aboard the Titanic 
6) parch: parch of parents / children aboard the Titanic 
7) ticket: Ticket number fare Passenger fare 
8) cabin: Cabin number embarked Port of Embarkation C = Cherbourg, Q = Queenstown, S = Southampton.

### Variable Notes
##### pclass: A proxy for socio-economic status (SES)
1st = Upper
2nd = Middle
3rd = Lower

#### age: 
Age is fractional if less than 1. If the age is estimated, is it in the form of xx.5

#### sibsp:
The dataset defines family relations in this way.
- Sibling = brother, sister, stepbrother, stepsister
- Spouse = husband, wife (mistresses and fiancés were ignored)

#### parch: 
The dataset defines family relations in this way.
- Parent = mother, father
- Child = daughter, son, stepdaughter, stepson
- Some children travelled only with a nanny, therefore parch=0 for them.

## Packages required in R
1) dplyr
2) ggplot2
3) caret
4) e1071
5) lmtest
6) lattice
7) gains

## Steps :
1) Data loading and Data cleaning
2) Data exploration
3) Data analysis
4) Data Prediction

## Conclusion
- Predictive model is biult with 78.7% accuracy using Logistic Regression Algorithm. 
- We can conclude that age, sex and passenger class influence on the survival level. According to interpretation, sex has strong strong   effect, passenger class has medium effect and age has small effect on on survival rate.
- Females tend to had more chances to survive over the men; passengers of the 1st class tend to have more chances to survive than 2       class, and 2nd class over the 3rd class. And children tend to survive over the adults and adults over the seniors.
