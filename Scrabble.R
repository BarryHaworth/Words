#  Function to find Scrabble words.
#  given a list of letters, this function returns all
#  words which can be made from them.

#  4th July 2013: Now can create words with letters provided, plus
#  a specificed number of blanks.
#  Note:  Allowing for blanks makes this run much slower.

#  17th July 2013:  Added Build function which, given a string
#  and a build letter or letters will return the words which can
#  be made using the string and the build point.
#  Build function updated to incorporate blanks.
#
#  21st August 2013:  Modified Scrabble function to incorporate Build
#  into the main function, doing away with the need for a separate 
#  Build function.

setwd("c:/words/")
# Run the code to create the data set
source("c:/words/words.r")

# Load previously created data set.
save.image("C:/Words/Words.RData")
load("C:/Words/Words.RData")

Scrabble = function(string,blanks=0,build=""){
  str2=paste(string,build,sep="")
  letters=nchar(str2)+blanks 
  counts=rep(0,26)
  alpha=c("A","B","C","D","E","F","G","H","I","J",
          "K","L","M","N","O","P","Q","R","S","T",
          "U","V","W","X","Y","Z")
  # Count the letters in the string
  for (i in 1:26){
    counts[i]=nchar(str2)-nchar(gsub(alpha[i],"",str2,ignore.case=TRUE))
  }
  # Find the words with these letters (plus blanks)
  results=word[(words$length<=letters)
               &(words$A<=counts[1]+blanks)
               &(words$B<=counts[2]+blanks)
               &(words$C<=counts[3]+blanks)
               &(words$D<=counts[4]+blanks)
               &(words$E<=counts[5]+blanks)
               &(words$F<=counts[6]+blanks)
               &(words$G<=counts[7]+blanks)
               &(words$H<=counts[8]+blanks)
               &(words$I<=counts[9]+blanks)
               &(words$J<=counts[10]+blanks)
               &(words$K<=counts[11]+blanks)
               &(words$L<=counts[12]+blanks)
               &(words$M<=counts[13]+blanks)
               &(words$N<=counts[14]+blanks)
               &(words$O<=counts[15]+blanks)
               &(words$P<=counts[16]+blanks)
               &(words$Q<=counts[17]+blanks)
               &(words$R<=counts[18]+blanks)
               &(words$S<=counts[19]+blanks)
               &(words$T<=counts[20]+blanks)
               &(words$U<=counts[21]+blanks)
               &(words$V<=counts[22]+blanks)
               &(words$W<=counts[23]+blanks)
               &(words$X<=counts[24]+blanks)
               &(words$Y<=counts[25]+blanks)
               &(words$Z<=counts[26]+blanks)
               ]
  # Count the number of letters in each word, and how many are extras
  results.n=length(results)
  counts.r=matrix(0,nrow=results.n,ncol=26)
  extras=rep(0,results.n)
  for (j in 1:results.n){
    for (i in 1:26){
      counts.r[j,i]=nchar(results[j])-nchar(gsub(alpha[i],"",results[j],ignore.case=TRUE))
      extras[j]=extras[j]+max(0,counts.r[j,i]-counts[i])
    }
  }
  #  Filter to get the right number of blanks.
  results.b=results[extras<=blanks]
  results.c=grep(toupper(build),results.b,value=TRUE)
#   results.c=data.frame(results,extras,counts.r)
#   results.d=list(string,counts,results.c)
  return(results.c)
  }

