#Subset_Extend_Sort DF

name <- c("Anne", "Pete", "Frank", "Julia", "Cath")
age <- c(28, 30, 21, 39, 35)
child <- c(FALSE, TRUE, TRUE, FALSE, TRUE)
people <- data.frame(name, age, child,
stringsAsFactors = FALSE)

people[3, 2]
people[3, "age"]
#everythin in 3rd rows
people[3, ]
#Everything in age col
people[, "age"]

#Subset Values in (3rd & 5th rows) AND (age & child column )
people[c(3, 5), c("age", "child")]
#2nd column
people[2]

#age in people
people$age
people[[2]]

#Adding columns
height <- c(163, 177, 163, 162, 157)
    #using $
people$height <- height
people[["height"]] <- height
    #using cbind
weight <- c(74, 63, 68, 55, 56)
cbind(people, weight)

#Adding rows
tom <- data.frame("Tom", 37, FALSE, 183)
rbind(people, tom)
tom <- data.frame(name = "Tom", age = 37,
child = FALSE, height = 183)

#sorting
sort(people$name)
sort(people$age)

#ranks in orders of lowest number
ranks <- order(people$age)
ranks
people[ranks, ]

#sort in decreasing order
people[order(people$age, decreasing = TRUE), ]
