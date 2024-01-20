# ワーキングディレクトリ設定
setwd("~/Documents/大学講義資料/応用演習DS/8")
library(foreign)

##8-2
# データの読み込み
jgss <- read.spss("jgss2018.sav", use.value.labels=FALSE, to.data.frame=TRUE)
attach(jgss) #カラムが一気に使える
size #変数sizeのみ表示

# 欠損値処理
jobhwk <- xjobhwk #xjobhwk(就労時間数/週)
jobhwk[jobhwk==888|jobhwk==999] <- NA

tsukin <- szcmttl #szcmttl(通勤時間)
tsukin[tsukin==8888|tsukin==9999] <- NA

test1 <-matrix(c(ageb,jobhwk,szcmttl),ncol=3)
colnames(test1) <- c("ageb", "jobhwk", "szcmttl")
summary(test1)

hist(ageb)
hist(jobhwk)
hist(szcmttl)

##8-3
#度数分布表の作成
度数<-c(table(sizehmt),nrow(jgss))
labels<-c("大都市の中心部","大都市の郊外","中小都市","町村部","人家がまばらな農山漁村")
labels1<-c("大都市の中心部","大都市の郊外","中小都市","町村部","人家がまばらな農山漁村","合計")
names(度数)<-labels1
n <-nrow(matrix(table(sizehmt)))
相対度数<-c(round(度数*100/sum(度数[1:n]),1))
cbind(度数,相対度数)

#円グラフ作成
table_size <-table(sizehmt) #sizeの集計表をtable_sizeへ渡す
names(table_size) <- labels
pie(table_size)

#パーセンテージ付き円グラフ
slices<-as.vector(table(sizehmt))
lbls <- labels
pct <- round(slices/sum(slices)*100)
lbls <-paste(lbls,pct) #add percent to labels
lbls <-paste(lbls,"%",sep="") #add%　to labels
pie(slices,clockwise=T,labels=lbls,col=gray(seq(0.4,1.0,length=n)), main="居住地域の規模: 母数=1916")
