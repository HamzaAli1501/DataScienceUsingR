#Exploring the Data Frame

#creating data frame
name <- c("Anne", "Pete", "Frank", "Julia", "Cath")
age <- c(28, 30, 31, 39, 35)
child <- c(F, T, T, F, T)

df <- data.frame(name, age, child)
df

name(df) <- c("Name", "Age", "Child")
df

df <- data.frame(Name = name, Age = age, Child = child)
df

#printing STR
str(df)

data.frame(name[-1], age, child)
data.frame(name[1], age, child)

df <- data.frame(name, age, child,
stringsAsFactors = FALSE)
str(df)