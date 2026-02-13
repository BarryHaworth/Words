#  Words
#  Reading words from a set of lists of legal scrabble words
#  and creating a data frame with the word, the length of the word, 
#  and the word key (the sorted list of letters in the word)
#  Words come from lists of words, up to 15 characters long.

setwd("c:/r/Words/data")

num=c("02","03","04","05","06","07","08","09","10","11","12","13","14","15")
infile=sprintf("%s_letter.txt", num)

word=scan(file=infile[1],what=character())
word[60]="NA"

for(i in 2:length(num)){
  word=c(word,scan(file=infile[i],what=character()))
}

# word=toupper(singles)  # Use Singles list instead of word

head(word)
nwords=length(word)
length <- nchar(word) 

# Letter Counts 
A=nchar(gsub("[^A]","",word))
B=nchar(gsub("[^B]","",word))
C=nchar(gsub("[^C]","",word))
D=nchar(gsub("[^D]","",word))
E=nchar(gsub("[^E]","",word))
F=nchar(gsub("[^F]","",word))
G=nchar(gsub("[^G]","",word))
H=nchar(gsub("[^H]","",word))
I=nchar(gsub("[^I]","",word))
J=nchar(gsub("[^J]","",word))
K=nchar(gsub("[^K]","",word))
L=nchar(gsub("[^L]","",word))
M=nchar(gsub("[^M]","",word))
N=nchar(gsub("[^N]","",word))
O=nchar(gsub("[^O]","",word))
P=nchar(gsub("[^P]","",word))
Q=nchar(gsub("[^Q]","",word))
R=nchar(gsub("[^R]","",word))
S=nchar(gsub("[^S]","",word))
T=nchar(gsub("[^T]","",word))
U=nchar(gsub("[^U]","",word))
V=nchar(gsub("[^V]","",word))
W=nchar(gsub("[^W]","",word))
X=nchar(gsub("[^X]","",word))
Y=nchar(gsub("[^Y]","",word))
Z=nchar(gsub("[^Z]","",word))

hist(length,main="Number of words by length of word")

strSort <- function(x){
 sapply(lapply(strsplit(x, NULL), sort), paste, collapse="") 
}

wordkey=rep(0,nwords)
for(i in 1:nwords){
wordkey[i]=strSort(word[i])
}
words=data.frame(word,length,wordkey,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,stringsAsFactors = FALSE)

del.list=c("A","B","C","D","E","F","G","H","I","J",
        "K","L","M","N","O","P","Q","R","S","T",
        "U","V","W","X","Y","Z",
        "i","infile","num","nwords","wordkey","del.list")
rm(list=del.list)

save.image("C:/r/Words/data/Words.RData")
