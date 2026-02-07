## Code to solve Pauls ROT13 puzzle 

#  ROT13 refers to a very simple cypher where every letter of a word is 
#  replaced by the letter 13 places before (or after) it in the alphabet. 
#  Because 13 is exactly half the number of letters in the alphabet, 
#  substitutions are reciprocal: A is replaced by N and N is replaced by A, etc.  

library(dplyr)

setwd("c:/r/words/")

# Load previously created data set.
load("C:/R/Words/data/Words.RData")

rot13 <- function(x) {
  old <- paste(letters, LETTERS, collapse="", sep="")
  new <- paste(substr(old, 27, 52), substr(old, 1, 26), sep="")
  chartr(old, new, x)
}

temp <- words %>% select(length,word) %>% rowwise() %>% mutate(rot13 = rot13(word))

rotwords <- inner_join(temp, words %>% select(word), by=c("rot13"="word")) %>% filter(word<rot13)

write.csv(rotwords, "C:/R/Words/data/rotwords.csv",row.names = F)
