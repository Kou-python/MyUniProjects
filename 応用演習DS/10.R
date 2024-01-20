# JGSS-2018を用いて、年代によって「喫煙経験(dosmokex)」が異なるか?クロス集計、カイ2乗検定、残差分析を行った結
# 果を、ワードに記録してください。
# • 前回作成した「年代(agebc)」を用いる。
# • クロス集計表および積み上げ棒グラフ(%)をエクセルで作成する.
# • RコードとR出力結果を貼り付ける.
# • 前ページのスライドの参照に結果を読み取り文章化する.

#データ読み込み
library(foreign)
jgss <- read.spss("jgss2018.sav",use.value.labels=FALSE, to.data.frame=TRUE)
#確認／アタッチ
head(jgss); ncol(jgss); nrow(jgss)
attach(jgss)

#ageへ値の再割り当て
agec <- ageb #世帯主年齢C
agec[agec<40]<-"30代以下"
agec[agec>=40&agec<50]<-"40代"
agec[agec>=50&agec<60]<-"50代"
agec[agec>=60&agec<70]<-"60代"
agec[agec>=70]<-"70代以上"
table(agec)
#欠損値処理
smoke=dosmokex
smoke[smoke==9]=NA

#クロス集計表
smokeT=table(agec,smoke)
colnames(smokeT) <- c("現在吸っている","吸っていたが辞めた","吸ったことはない")
smokeT
write.csv(smokeT, file="smokeT.csv", fileEncoding="CP932")

#χ2検定（chisq.test）
chisq.test(smokeT)
#残差分析
mosaicplot(smokeT,shade = T)

##10-2
#目的変数：幸福度
#説明変数：年齢(ageb), 世帯収入のレベル(op5ffinx), 結婚経験(xmarry), 将来の経済的不安(axecnsf), 生活満足度：友人関係(st5friy)

#割り当て
# 幸福度 1不幸、5幸福
happy <- op5happz
table(happy)
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

# 世帯主年齢 age
agec= ageb
agec[agec<40]<-1
agec[agec>=40&agec<50]<-2
agec[agec>=50&agec<60]<-3
agec[agec>=60&agec<70]<-4
agec[agec>=70]<-5
table(agec)
# 世帯収入のレベル income
income = op5ffinx
income[income==9]=NA
table(income)
# 結婚経験(xmarry)
xmarry[xmarry==1]=11
xmarry[xmarry==2]=1
xmarry[xmarry==11]=2
table(xmarry)

# 生活満足度：友人関係 st5friy
st5friy[st5friy==1]<-15
st5friy[st5friy==2]<-14
st5friy[st5friy==3]<-13
st5friy[st5friy==4]<-12
st5friy[st5friy==5]<-11
st5friy[st5friy==9]<-NA
st5friy[st5friy==15]<-5
st5friy[st5friy==14]<-4
st5friy[st5friy==13]<-3
st5friy[st5friy==12]<-2
st5friy[st5friy==11]<-1
table(st5friy)

# 将来の経済的不安(axecnsf)
axecnsf[axecnsf==9]=NA
table(axecnsf)

# データスケーリング

#回帰分析モデル作成
reg3 = lm(happy~agec+income+xmarry+axecnsf+st5friy)
summary(reg3)

# 多重共線性の確認
vif(reg3)
