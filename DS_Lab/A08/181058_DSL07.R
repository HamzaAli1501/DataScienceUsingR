#FOR PRACTICE
# dataset <- read.csv("Data.csv")
# dataset

# #taking null val and finding its ave
# dataset$Age <- ifelse(
#     is.na(dataset$Age),
#         ave(dataset$Age, FUN = function(x) mean(x, na.rm = TRUE)),
#         dataset$Age)

# #Encoding Categorical Data
# #Finding Unique value and categorizing them
# fac <- factor(dataset$Country)
# fac

# dataset$Country <- factor(dataset$Country,
#                             level = c("France", "Spain", "Germany"),
#                             labels = c(1, 2, 3)
#                          )

# dataset

# #Using CaTools
# library(caTools)
# set.seed(123)
# split <- sample.split(dataset$Purchased, SplitRatio = 0.8)
# trainingset <- subset(dataset, split == TRUE)
# testset <- subset(dataset, split == FALSE)

# trainingset
# testset

# #Feature Scaling
# #Taking Values from 0 to 1 / -1 to 1
# set.seed(123)

# trainingset[, 2:3] <- scale(trainingset[, 2:3])
# testset[, 2:3] <- scale(testset[, 2:3])

#Provided Tasks
t_data_set <- read.csv("Data.csv")
t_data_set

#T1 -> Replacing Null in Salary
t_data_set$Salary <- ifelse(
    is.na(t_data_set$Salary),
        ave(t_data_set$Salary, FUN = function(x) mean(x, na.rm = TRUE)),
        t_data_set$Salary)
t_data_set

#T2 -> Encoding Purchased to numerical Value
#Finding Unique value and categorizing them
fac <- factor(t_data_set$Purchased)
fac

# As we have bool value so replacing No with "0" and Yes with "1"
t_data_set$Purchased <- factor(t_data_set$Purchased,
                            level = c("No", "Yes"),
                            labels = c(0, 1)
                         )
t_data_set

#T3 ->  Splitting to  70 30 ration
#Using CaTools
library(caTools)
set.seed(123)
#just changing from 0.8 to 0.7
split <- sample.split(t_data_set$Country, SplitRatio = 0.7)
n_trainingset <- subset(t_data_set, split == TRUE)
n_testset <- subset(t_data_set, split == FALSE)

dim(n_trainingset); dim(n_testset)

#T4 ->  Scaling Age and Salary Column
# for training set [-2:2]
n_trainingset[, 2:3] <- scale(n_trainingset[,2:3])
n_trainingset

# for testing set
n_testset [, 2:3] <- scale(n_testset[, 2:3])
n_testset

#exporting processed data
write.csv(t_data_set, "Processed_DataSet.csv", row.names = FALSE)
write.csv(n_trainingset, "Trained_Dataset.csv", row.names = FALSE)
write.csv(n_testset, "Tested_Dataset.csv", row.names = FALSE)
print("Processed and Exported")


