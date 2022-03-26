#Basic Graphic
#Creating a Plot
crime <- read.csv("USArrests.csv", stringsAsFactors = FALSE)
crime
dim(crime)
str(crime)
summary(crime)
colnames(crime)
 
head(crime, n = 10)
tail(crime, n = 5)
 
View(crime)
plot(crime$Murder)
plot(crime)

plot(crime$Murder, crime$Assault)

#Using Hist
hist(crime$Murder)
hist(crime$Murder, breaks = 1)

barplot(crime$Murder)

boxplot(crime$Murder)

#7.2 -> Customizing Plots
data("pressure")
mercury <- pressure 
head(mercury)

#basic & Fancy plot
plot(mercury$temperature, mercury$pressure)
plot(
    mercury$temperature, mercury$pressure,
    xlab = "Temperature",
    ylab = "Pressure",
    main = "T vs P for mercury",
    type = 'o',
    col = 'Orange'
    )

plot(
    mercury$temperature,
    mercury$pressure,
    col = "darkgreen"
)
plot(mercury$temperature, mercury$pressure)
#Using PAR
par(col = "blue")
plot(mercury$temperature, mercury$pressure)

par()$col

#More Graphical Parameters
plot(
    mercury$temperature, mercury$pressure,
    xlab = "Temperature",
    ylab = "Pressure",
    main = "T vs P for mercury",
    type = 'o',
    col = 'Orange',
    col.main = "darkgray",
    cex.axis = 0.6,
    lty = 5,
    pch = 4
    )
