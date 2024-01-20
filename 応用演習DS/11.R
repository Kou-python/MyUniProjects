setwd("/Users/kosei/Documents/大学講義資料/応用演習DS/data")

#データ読み込み
library(foreign)
require(car)
jgss <- read.spss("jgss2018.sav", use.value.labels=FALSE, to.data.frame=TRUE)
#確認／アタッチ
head(jgss); ncol(jgss); nrow(jgss)
attach(jgss)

## 10-1 ロジスティック回帰
#喫煙ダミー(1:現在吸っている,0:吸ってない)
smoke <- dosmokex
smoke[smoke==2]<-0
smoke[smoke==3]<-0
smoke[smoke==9]<-NA
table(dosmokex,smoke)

#働き方 (1:仕事してる,0:してない)
job <- xjob1wk
job[job==1]<-1
job[job==2]<-1
job[job==3]<-0

#単⾝ダミー作成
single <- szffttl
single[single==1]<-1
single[single>=2&single<=12]<-0
single[single==999]<-NA
table(szffttl,single)#確認

# 世帯主年齢 age
agec= ageb
agec[agec<40]<-1
agec[agec>=40&agec<50]<-2
agec[agec>=50&agec<60]<-3
agec[agec>=60&agec<70]<-4
agec[agec>=70]<-5
table(agec)

#⼥性ダミー作成 (1:女性)
woman <- sexa
woman[woman==1]<-0
woman[woman==2]<-1
table(sexa,woman)

# 幸福度 1不幸、5幸福
happy <- op5happz
happy[happy==1]<-15
happy[happy==2]<-14
happy[happy==3]<-13
happy[happy==4]<-12
happy[happy==5]<-11
happy[happy==9]<-NA
happy[happy==15]<-5
happy[happy==14]<-4
happy[happy==13]<-3
happy[happy==12]<-2
happy[happy==11]<-1
table(happy)


#多重共線性のチェック
reg5 <-lm(smoke~woman+agec+single+job+happy)
summary(reg5)
exp(reg5$coefficients) #オッズ比
vif(reg5)

# ケース1
case1 <- data.frame(woman = 1, agec = 1, single = 1, job = 1, happy = 5)

# ケース2
case2 <- data.frame(woman = 0, agec = 5, single = 0, job = 0, happy = 1)

# 喫煙確率の計算
prob1 <- predict(reg5, newdata = case1, type = "response")
prob2 <- predict(reg5, newdata = case2, type = "response")

# 結果の表示
cat("ケース1の喫煙確率は", prob1, "です。\n")
cat("ケース2の喫煙確率は", prob2, "です。\n")

## 10-2 変数合成
library(psych)

#値の入れ替え
kaji1 <- fq7ckdnr
kaji1[kaji1==1]<-11; kaji1[kaji1==2]<-12
kaji1[kaji1==3]<-13; kaji1[kaji1==4]<-14
kaji1[kaji1==5]<-15; kaji1[kaji1==6]<-16
kaji1[kaji1==7]<-17
kaji1[kaji1==11]<-6; kaji1[kaji1==12]<-5
kaji1[kaji1==13]<-4; kaji1[kaji1==14]<-3
kaji1[kaji1==15]<-2; kaji1[kaji1==16]<-1
kaji1[kaji1==17]<-0
kaji1[kaji1==9]<-0 #ここでは0にします
table(kaji1)

kaji2 <- fq7wash
kaji2[kaji2==1]<-11; kaji2[kaji2==2]<-12
kaji2[kaji2==3]<-13; kaji2[kaji2==4]<-14
kaji2[kaji2==5]<-15; kaji2[kaji2==6]<-16
kaji2[kaji2==7]<-17
kaji2[kaji2==11]<-6; kaji2[kaji2==12]<-5
kaji2[kaji2==13]<-4; kaji2[kaji2==14]<-3
kaji2[kaji2==15]<-2; kaji2[kaji2==16]<-1
kaji2[kaji2==17]<-0
kaji2[kaji2==9]<-0 #ここでは0にします
table(kaji2)

kaji3 <- fq7shop
kaji3[kaji3==1]<-11; kaji3[kaji3==2]<-12
kaji3[kaji3==3]<-13; kaji3[kaji3==4]<-14
kaji3[kaji3==5]<-15; kaji3[kaji3==6]<-16
kaji3[kaji3==7]<-17
kaji3[kaji3==11]<-6; kaji3[kaji3==12]<-5
kaji3[kaji3==13]<-4; kaji3[kaji3==14]<-3
kaji3[kaji3==15]<-2; kaji3[kaji3==16]<-1
kaji3[kaji3==17]<-0
kaji3[kaji3==9]<-0 #ここでは0にします
table(kaji3)

kaji4 <- fq7clean
kaji4[kaji4==1]<-11; kaji4[kaji4==2]<-12
kaji4[kaji4==3]<-13; kaji4[kaji4==4]<-14
kaji4[kaji4==5]<-15; kaji4[kaji4==6]<-16
kaji4[kaji4==7]<-17
kaji4[kaji4==11]<-6; kaji4[kaji4==12]<-5
kaji4[kaji4==13]<-4; kaji4[kaji4==14]<-3
kaji4[kaji4==15]<-2; kaji4[kaji4==16]<-1
kaji4[kaji4==17]<-0
kaji4[kaji4==9]<-0 #ここでは0にします
table(kaji4)

kaji5 <- fq7garb
kaji5[kaji5==1]<-11; kaji5[kaji5==2]<-12
kaji5[kaji5==3]<-13; kaji5[kaji5==4]<-14
kaji5[kaji5==5]<-15; kaji5[kaji5==6]<-16
kaji5[kaji5==7]<-17
kaji5[kaji5==11]<-6; kaji5[kaji5==12]<-5
kaji5[kaji5==13]<-4; kaji5[kaji5==14]<-3
kaji5[kaji5==15]<-2; kaji5[kaji5==16]<-1
kaji5[kaji5==17]<-0
kaji5[kaji5==9]<-0 #ここでは0にします
table(kaji5)

kaji6 <- fq7rph
kaji6[kaji6==1]<-11; kaji6[kaji6==2]<-12
kaji6[kaji6==3]<-13; kaji6[kaji6==4]<-14
kaji6[kaji6==5]<-15; kaji6[kaji6==6]<-16
kaji6[kaji6==7]<-17
kaji6[kaji6==11]<-6; kaji6[kaji6==12]<-5
kaji6[kaji6==13]<-4; kaji6[kaji6==14]<-3
kaji6[kaji6==15]<-2; kaji6[kaji6==16]<-1
kaji6[kaji6==17]<-0
kaji6[kaji6==9]<-0 #ここでは0にします
table(kaji6)

kaji <- cbind(kaji1,kaji2,kaji3,kaji4,kaji5,kaji6)
alpha(kaji)

#主成分分析
result <- prcomp(kaji)
summary(result)
biplot(result)
round(result$rotation,3)#固有ベクトルの出力
result$x

kajipoint1<--result$x[,1]
kajipoint2 <- 0.573*kaji1 + 0.558* kaji2 + 0.317*kaji3+ 0.376*kaji4 +
  0.345*kaji5 + 0.022*kaji6
plot(kajipoint1,kajipoint2)#確認

## 10-3 対応分析
# パッケージの読み込み
library(foreign)
require(FactoMineR)
require(ggplot2)

#対応分析
jgssw <- read.spss("jgss2018.sav", use.value.labels=TRUE, to.data.frame=TRUE)
newtea = jgssw[,c("sexa","xjob1wk","domarry","st5friy","op5happz", "fq7clean")]
newtea2 <- cbind(newtea,sexa=ifelse(jgssw$sexa=="男","男","女"))
newtea2 <- cbind(newtea2,xjob1wk=ifelse(jgssw$xjob1wk=="仕事をした", "仕事をした","仕事をしていない他"))
newtea2 <- cbind(newtea2,domarry=ifelse(jgssw$domarry=="現在、配偶者がいる","既婚","未婚等"))
newtea2 <- cbind(newtea2,st5friy=ifelse(jgssw$st5friy=="1：満足"|jgssw$st5friy=="2", "良好","良好でない"))
newtea2 <- cbind(newtea2,op5happz=ifelse(jgssw$op5happz=="1：幸せ"|jgssw$op5happz=="2", "幸せ","幸せでない"))
newtea2 = cbind(newtea2, fq7clean=ifelse(jgssw$fq7clean=="1:綺麗"|jgss$fq7clean=="2", "掃除する","掃除しない"))
newtea <- subset(newtea2, select=- c(sexa,xjob1wk,domarry,st5friy,op5happz, fq7clean))
head(newtea)

# 変数ごとのカテゴリーの数
cats = apply(newtea, 2, function(x) nlevels(as.factor(x)))
cats
mca1 = MCA(newtea, graph = FALSE)
mca1
mca1$eig

# data frame with variable coordinates（変数座標によるデータフレーム）
mca1_vars_df = data.frame(mca1$var$coord, Variable = rep(names(cats), cats))

# plot of variable categories（変数カテゴリーのプロット）
ggplot(data=mca1_vars_df,
       aes(x = Dim.1, y = Dim.2, label = rownames(mca1_vars_df))) +
  geom_hline(yintercept = 0, colour = "gray70") +
  geom_vline(xintercept = 0, colour = "gray70") +
  geom_text(aes(colour=Variable), family = "HiraKakuPro-W3") +
  ggtitle("MCA plot of variables using R package FactoMineR") +
  theme_gray (base_family = "HiraKakuPro-W3")
