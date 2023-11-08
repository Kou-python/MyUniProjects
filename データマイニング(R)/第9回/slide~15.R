Dataset<-sbnote
library(rpart)
library(party)

note.rp<-rpart(class~.,data = Dataset)
plot(note.rp,uniform=T, branch=0.6, margin=0.05)
text(note.rp,use.n = T, all = T)
print(note.rp)
