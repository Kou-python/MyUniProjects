#作業ディレクトリの設定
setwd("~/Documents/大学講義資料/応用演習DS/data")

#データ読み込み
library(foreign)
jgss <- read.spss("jgss2018.sav",
                  use.value.labels=FALSE, to.data.frame=TRUE)
#確認／アタッチ
head(jgss); ncol(jgss); nrow(jgss)
attach(jgss)
#基礎統計量の算出／ヒストグラム
test <- matrix(c(ageb,xjobhwk,szcmttl), ncol=2)
colnames(test)<-c("年齢","就労時間／週","通勤時間")
summary(test)
#hist(ageb)

#欠損値処理
jobhwk <-xjobhwk
jobhwk[jobhwk==8881|jobhwk==999] <- NA
tsuki.n <- szcmttl
tsuki.n[tsuki.n==88881|tsuki.n==9999] <- NA
#度数分布表の作成
度数<-c( table(size),nrow(jgss))
names(度数) <- c("大都市","人口20 万人以上の市","人口20 万人未満の市","町村","合計")
n<-nrow(matrix(table(size)))
相対度数<-round (度数*100/sum(度数[1:n]),1)
cbind(度数,相対度数)

##9-1
#値の再割り当て
agec <- ageb #世帯主年齢C
agec[agec<40]<-1
agec[agec>=40&agec<50]<-2
agec[agec>=50&agec<60]<-3
agec[agec>=60&agec<70]<-4
agec[agec>=70]<-5
plot(ageb,agec)#再割り当ての確認
table(sizehmt,agec)#再割り当ての確認2

#クロス集計②
cas<-table(agec,xhssub)
rownames(cas)<-c("30代以下","40代","50代","60代","70代以上")
colnames(cas)<-c("普通科", "工業", "商業", "農業", "家庭・家政", "その他", "高校未卒", "わからない")
cas

#csv出力
write.csv(cas, file="cas.csv", fileEncoding="CP932")

##9-2
data2<-wntmryag #結婚意欲
data1<-xjobyr #就労年数

data1[data1==999]<-NA
data2[data2==999]<-NA

plot(data1, data2)
cor.test(data1,data2)

##sample for 9-3
#20代と、30代の、jobhwk（就労時間／週、999をNA化）を抜き出す
jobhwk20 <- jobhwk[ageb>=20 & ageb<30]
jobhwk30 <- jobhwk[ageb>=30 & ageb<40]

d.names <- c("20代", "30代")
boxplot(jobhwk20,jobhwk30,names=d.names)

##9-3
#帰無仮説：男女のTV試聴時間に差がない
#男性と女性にデータを分ける、欠損値削除
hrtv[hrtv==999]<-NA
hrtv_male<-hrtv[sexa==1]
hrtv_female<-hrtv[sexa==2]
#箱ひげ図作成
d.names <- c("男", "女")
boxplot(hrtv_male, hrtv_female ,names=d.names)
#平均値検定(T検定)
t.test(hrtv_male, hrtv_female)
wilcox.test(hrtv_male, hrtv_female)
