#  First Letter Stuff

setwd("c:/words/")
source("c:/words/words.r")

# First Letters

first=substr(word,1,1)
firsts=rep(0,26)

first.A=sum(first=='A')
first.B=sum(first=='B')
first.C=sum(first=='C')
first.D=sum(first=='D')
first.E=sum(first=='E')
first.F=sum(first=='F')
first.G=sum(first=='G')
first.H=sum(first=='H')
first.I=sum(first=='I')
first.J=sum(first=='J')
first.K=sum(first=='K')
first.L=sum(first=='L')
first.M=sum(first=='M')
first.N=sum(first=='N')
first.O=sum(first=='O')
first.P=sum(first=='P')
first.Q=sum(first=='Q')
first.R=sum(first=='R')
first.S=sum(first=='S')
first.T=sum(first=='T')
first.U=sum(first=='U')
first.V=sum(first=='V')
first.W=sum(first=='W')
first.X=sum(first=='X')
first.Y=sum(first=='Y')
first.Z=sum(first=='Z')

firsts[1]=first.A
firsts[2]=first.B
firsts[3]=first.C
firsts[4]=first.D
firsts[5]=first.E
firsts[6]=first.F
firsts[7]=first.G
firsts[8]=first.H
firsts[9]=first.I
firsts[10]=first.J
firsts[11]=first.K
firsts[12]=first.L
firsts[13]=first.M
firsts[14]=first.N
firsts[15]=first.O
firsts[16]=first.P
firsts[17]=first.Q
firsts[18]=first.R
firsts[19]=first.S
firsts[20]=first.T
firsts[21]=first.U
firsts[22]=first.V
firsts[23]=first.W
firsts[24]=first.X
firsts[25]=first.Y
firsts[26]=first.Z

