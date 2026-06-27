# What a difference an e (doesn't) make
# From a Paul Kenedy quiz, lookign for words with and without a final "E"
# pronounced the same byut with different meanings.

library(dplyr)

load("C:/r/Words/data/Words.RData")

elist <- words %>% select(word) %>% 
  mutate(worde = paste0(word,"E")) %>% 
  inner_join(words %>% select(word),by=join_by(worde==word))

head(elist,20)
