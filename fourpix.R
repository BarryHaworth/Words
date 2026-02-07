#  Function to list possible Four Pictures one Word answers
#  Now working, and not case sensitive.

setwd("c:/r/words/")
# Run the code to create the data set
# source("c:/words/words.r")

# Load previously created data set.
load("C:/r/Words/Words.RData")

fourpix=function(len,letters){
  # count number of each letter in letter string
  counts=rep(0,26)
  alpha=c("A","B","C","D","E","F","G","H","I","J",
            "K","L","M","N","O","P","Q","R","S","T",
            "U","V","W","X","Y","Z")
  for (i in 1:26){
    counts[i]=nchar(letters)-nchar(gsub(alpha[i],"",letters,ignore.case=TRUE))
  }
  # find words which match this and length
  results=word[(words$length==len)
               &(words$A<=counts[1])
               &(words$B<=counts[2])
               &(words$C<=counts[3])
               &(words$D<=counts[4])
               &(words$E<=counts[5])
               &(words$F<=counts[6])
               &(words$G<=counts[7])
               &(words$H<=counts[8])
               &(words$I<=counts[9])
               &(words$J<=counts[10])
               &(words$K<=counts[11])
               &(words$L<=counts[12])
               &(words$M<=counts[13])
               &(words$N<=counts[14])
               &(words$O<=counts[15])
               &(words$P<=counts[16])
               &(words$Q<=counts[17])
               &(words$R<=counts[18])
               &(words$S<=counts[19])
               &(words$T<=counts[20])
               &(words$U<=counts[21])
               &(words$V<=counts[22])
               &(words$W<=counts[23])
               &(words$X<=counts[24])
               &(words$Y<=counts[25])
               &(words$Z<=counts[26])
               ]
  return(results)
}

#fourpix(2,"SNPVLEIHDKAA")
#fourpix(4,"CATS")
# fourpix(4,"SNPVLEIHDKAA")  # 382 - Save
