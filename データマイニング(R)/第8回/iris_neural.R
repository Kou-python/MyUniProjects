library("h2o")
h2o.init()
data("iris")
even.n<-2*(1:75)-1
iris.train<-iris[even.n,]
iris.test<-iris[-even.n,]
iris.train.hex<-as.h2o(iris.train)
iris.test.hex<-as.h2o(iris.test)
tr3<- h2o.deeplearning(x=1:4,y=5,training_frame=iris.train.hex, hidden=c(20,10,10), epochs=100, nfolds = 3)
tr3
p1<- h2o.predict(tr3,iris.test.hex)
p10<- as.data.frame(p1)
table(p10[,1],iris.test[,5])