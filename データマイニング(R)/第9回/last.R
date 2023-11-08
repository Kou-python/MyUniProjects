data("cars")
set.seed(0)
cars.rp<-rpart(dist~speed, data = cars, minsplit=3)
printcp(cars.rp)

res<-as.party(cars.rp)
plot(res)
cars.rp1<-prune(cars.rp,cp=0.044)
plot(cars.rp1, uniform=T,margin=0.05)
text(cars.rp1,use.n = T)

