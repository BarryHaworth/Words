# Doubler.
# Function/program to find doubled letter words - words where doubling a letter produces another word
# Inspired by a Paul Kennedy quiz of 28/08/2026

library(dplyr)

load("C:/r/Words/data/Words.RData")

# Function to take a word an return list of doubled values
dublin <- function(word){
  len <- nchar(word)
  doubles <- c()
  for (i in 1:len){
    dub <- paste0(substr(word,1,i),substr(word,i,len))
    doubles <- c(doubles,dub)
  }
  doubled <- data.frame(word=word, doubled=doubles)
  return(doubled)
}

# Get list of words
start <- words %>% filter(length<=6) %>% select(word)

# Double all the words

doubled <- data.frame(word="",doubled="")

for (i in 1:length(start$word)){
  doubled <- bind_rows(doubled,dublin(start$word[i]))
}

doubled <- doubled %>% unique()

# Filter the doubled list against the list of words

filtered <- inner_join(doubled,words %>% select(word),by=join_by(doubled==word))
