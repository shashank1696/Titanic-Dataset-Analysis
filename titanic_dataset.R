setwd("H:/R")
#Data loading
a = read.csv("H:/R/gender_submission.csv")
a
View(a)
names(a)
sur = a$Survived
sur
table(a$Survived)
#Installing the packages
library(dplyr)
library(ggplot2)
library(lattice)
install.packages("lmtest")
library(lmtest)

install.packages("caret")
library(caret)
install.packages("car")

library(car)
setwd("H:/R")

library(caret)
install.packages("gains")
library(gains)
install.packages("e1071")
library("e1071")
library(dplyr)

dim(a)

titanic = read.csv("train.csv")
titanic
View(titanic)
dim(titanic)
names(titanic)
is.na(titanic$Cabin)
colSums(is.na(titanic))
names(titanic)
titanic = titanic[,-11]

tapply(titanic$Age,titanic$Parch,mean)
summary(titanic)

tapply(titanic$Age,titanic$Sex,mean)
tapply(titanic$Age,titanic$Survived,mean)
tapply(titanic$Age,titanic$Ticket,mean)
tapply(titanic$Age,titanic$Fare,mean)
tapply(titanic$Age,titanic$Embarked,mean)
tapply(titanic$Age,titanic$SibSp,mean)
tapply(titanic$Age,titanic$Pclass,mean)

names(titanic)
#Data cleaning
titanic = titanic[,-9]
titanic = titanic[,-4]
#Removed ticket and names because it doesn't matter to know if the person has survived or not.
dim(titanic)
summary(titanic$Age)
titanic$Age[is.na(titanic$Age)] = mean(titanic$Age, na.rm = TRUE)
summary(titanic)
summary(titanic$Age)
names(titanic)

test = read.csv("test.csv")
summary(test)
names(test)
test = test [,-3]
test = test [,-7]
test = test [,-8]

test$Age[is.na(test$Age)] = mean(test$Age, na.rm = TRUE)
test$Fare[is.na(test$Fare)] = mean(test$Fare, na.rm = TRUE)

summary(test)
summary(titanic)
View(test)

nonvariables = c("PassengerId","Name","Ticket","Embarked","Cabin")
class(nonvariables)
summary(nonvariables)
titanic = titanic[,!(names(titanic) %in% nonvariables)]
summary(titanic)
str(titanic)
View(titanic)

titanic$Sex = as.numeric(titanic$Sex)
test$Sex = as.numeric(test$Sex)
cor(titanic)
#Model building
titaniclog1 = glm(Survived~., data = titanic, family = "binomial")
summary(titaniclog)

titaniclog2 = glm(Survived ~ . - Parch, data = titanic, family = "binomial")
summary(titaniclog)

titaniclog3 = glm(Survived ~ . - Parch - Fare, data = titanic, family = "binomial")
summary(titaniclog3)
table(titanic$Survived)

#Who didnot survive, calculate for 0 values
accurate = 549 / (549+342)
accurate

predicttitanic = predict(titaniclog3,type = "response")
predicttitanic
table(titanic$Survived,predicttitanic >=0.5)

#Who survived, calculate for the 1 values
accurate = (244 + 458) / nrow(titanic)
accurate

predicttest = predict(titaniclog3, type = "response", newdata = test)
predicttest
#Predit for alpha values >= 0.5
test$Survived = as.numeric(predicttest >= 0.5)
table(test$Survived)
head(predicttest)
View(test)
