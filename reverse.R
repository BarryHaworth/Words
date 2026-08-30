# Reversed words
# From a Paul Kenedy quiz, looking for word pairs when the word is reversed
# pronounced the same byut with different meanings.

library(dplyr)
library(stringi)

load("C:/r/Words/data/Words.RData")

reversed <- words %>% select(word,length) %>% 
  filter(length>2) %>%
  mutate(reversed = stri_reverse(word)) %>% 
  inner_join(words %>% select(word),by=join_by(reversed==word))

head(reversed,20)
