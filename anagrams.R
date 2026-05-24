## Anagrams
# Function to find all anagrams of a word.

library(dplyr)

load("C:/r/Words/data/Words.RData")

anagram <- function(w){
  k <- words %>% filter(word==toupper(w)) %>% select(wordkey)
  key <- k$wordkey
  anagrams <- words %>% filter(wordkey==key) %>% select(word)
  return(anagrams)
}
