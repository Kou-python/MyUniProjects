tr4<- h2o.deeplearning(x=1:4,y=5,training_frame=iris.train.hex)
tr4
p2<- h2o.predict(tr4,iris.test.hex)
p20<- as.data.frame(p2)
table(p20[,1],iris.test[,5])