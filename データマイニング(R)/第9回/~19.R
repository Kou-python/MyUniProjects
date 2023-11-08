library(partykit)

data("iris")
iris.rp<-rpart(Species~.,data = iris)
print(iris.rp)
even.n<-2*(1:75)-1
iris.train<-iris[even.n,]
iris.test<-iris[-even.n,]
iris.rp2<-rpart(Species~.,iris.train)
iris.rp3<-predict(iris.rp2,iris.test[,-5],type = "class")
table(iris.test[,5],iris.rp3)
res<-as.party(iris.rp)
plot(res)
