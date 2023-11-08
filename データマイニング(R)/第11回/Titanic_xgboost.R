library(xgboost)
titanic$Survived<-as.factor(titanic$Survived)
sim<-10
result<-matrix(0,sim)
titanic[,4]<-as.numeric(titanic[,4])
titanic[,9]<-as.numeric(titanic[,9])

for(i in 1:sim){
  train.id<-sample(nrow(titanic),400)
  train.data<-titanic[train.id,-1]
  test.data<-titanic[-train.id,-1]
  label.data.train<-as.integer(train.data$Survived)-1
  label.data.predict<-as.integer(test.data$Survived)-1
  train.data.xg<-train.data[,-1]
  test.data.xg<-test.data[,-1]
  xgb.data<-xgb.DMatrix(data.matrix(train.data.xg),label=label.data.train)
  xgb.data.predict<-xgb.DMatrix(data.matrix(test.data.xg))
  param <- list("objective" = "binary:logistic","eta" = 0.01,"min_child_weight" = 5)
  model <- xgboost(param=param,data=xgb.data,nrounds=1000)
  predict_xgb<-predict(model,xgb.data.predict)
  a<-c()
  m<-length(predict_xgb)
  for(l in 1:m){
    if(predict_xgb[l]>0.5){a[l]<-1}
    else{a[l]<-0} }
  result[i]<-sum(a==label.data.predict)/length(a)
}
mean(result)