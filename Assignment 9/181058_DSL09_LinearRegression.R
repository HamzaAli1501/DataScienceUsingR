adverstising <- read.csv("advertising.csv")

head(adverstising)
tail(adverstising)
summary(adverstising)
dim(adverstising)
plot(adverstising)

#installing corrplot
library(corrplot)
num.cols <- sapply(adverstising, is.numeric)
num.cols

cor.data <- cor(adverstising[, num.cols])
cor.data

corrplot(cor.data, method='color')

#Splitting the data
library(caTools)
set.seed(2)
split <- sample.split(adverstising, SplitRatio = 0.8)
train <- subset(adverstising, split == 'TRUE')
test <- subset(adverstising, split == 'FALSE')

head(train)
head(test)
View(train)
View(test)

#making a model
model <- lm(Sales ~., data = train)
summary(model)

pred <- predict(model, test)
head(pred)

res <-residuals(model)
res <- as.data.frame(res)
head(res)

#Compairing with actual values
results <- cbind(pred, test$Sales)
colnames(results) <- c('Predicted', 'Real')
results <- as.data.frame(results)
head(results)

plot(test$Sales, type = 'l', lty = 1.8, col='red')
plot(test$Sales, type = 'l', col='red')
lines(pred, col='green')
