library(kernlab)
tr.num<-sample(4601,2500)
spam.train<-Dataset[tr.num,]
spam.test<-Dataset[-tr.num,]
spam.svm<-ksvm(type~.,data=spam.train,cross=3)
spam.svm

spam.pre<-predict(spam.svm, spam.test[,-58])
spam.tab<-table(spam.test[,58],spam.pre)
spam.tab
1-sum(diag(spam.tab)/sum(spam.tab))