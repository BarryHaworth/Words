#  Four Pictures one Word - using the Words code.

setwd("c:/words/")
# Run the code to create the data set
# source("c:/words/words.r")

# Load previously created data set.
load("C:/Words/Words.RData")

# Four pictures one word 330 - Novel
word[(length== 5)&((F+B+V+H+L+T+E+U+O+Q+N)==5)&(E<3)&(F<2)&(B<2)&(V<2)&(H<2)&(L<2)&(T<2)&(U<2)&(O<2)&(Q<2)&(N<2)]

# Four pictures one word 350 - Tease
word[(length== 5)&((E+S+O+T+V+Y+L+A+H)==5)&(E<4)&(S<2)&(O<2)&(T<2)&(V<2)&(Y<3)&(L<2)&(A<2)&(H<2)]

# Four pictures one word 356 - Tumbler
word[(length== 7)&((L+P+R+B+U+D+T+E+M)==7)&(L<3)&(P<2)&(R<2)&(B<2)&(U<2)&(D<3)&(T<3)&(M<3)]

# Four pictures one word 380 - Combine
word[(length== 7)&((V+P+A+Z+I+E+O+M+N+C+B)==7)&(V<2)&(P<2)&(A<2)&(Z<3)&(I<2)&(E<2)&(O<2)&(M<2)&(N<2)&(C<2)&(B<2)]
