library(h2o)
h2o.init()
even.n <- 2*(1:2300)-1
spam.train <- spam[even.n,]
spam.test <- spam[-even.n,]
spam.train.hex <- as.h2o(spam.train)
spam.test.hex <- as.h2o(spam.test)
tr1 <- h2o.deeplearning(x=1:57,y=58,training_frame=spam.train.hex, hidden=c(40,40,10), epochs=100, nfolds=3)
tr1
p1<- h2o.predict(tr1,spam.test.hex)
p10<- as.data.frame(p1)
table(p10[,1],spam.test[,58])