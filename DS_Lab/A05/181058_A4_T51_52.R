#Create and Name List
#Vector-Matrix-List
c("Rsome times", 190, 5)

list("Rsome times", 190, 5)

song <- list("Rsome times", 190, 5)

names(song) <- c("title", "duration", "track")

song$title
song$duration
song$track

#alternative for naming
song <- list(title = "Rsome times",
duration = 190,
track = 5)

similar_song <- list(title = "R you on time?",
duration = 230)

song <- list(title = "Rsome times",
duration = 190, track = 5,
similar = similar_song)

song[1]
song[[1]] #title, duration, track

song[c(1, 3)]
song[[4]][[1]]
#Subset by names

#subset by logical
song[c(FALSE, TRUE, TRUE, FALSE)]

friends <- c("Kurt", "Florence",
"Patti", "Dave")

song$sent <- friends
song

#List expansion
song[["sent"]] <- friends
song$similar$reason <- "too long"
str(song)