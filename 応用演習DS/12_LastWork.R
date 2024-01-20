library(foreign)
require(FactoMineR)
require(ggplot2)
library(dplyr)

setwd("/Users/kosei/Documents/大学講義資料/過去授業/3年後期/応用演習DS/data/オタク")
df=read.csv("オタク.csv")

### 前処理
# SNSアカウントを持っていない(0)持っている(1)に分けた
df$q55[df$q55 == 3] <- 0
df$q55[df$q55 == 2] <- 1

# 出費の外れ値除去
df$q54[df$q54>40000]=NA

### モデル作成
# データフレームから指定された列を選択してデータセットを作成
selected_df <- df[, c("q3","q4", "q52_1", "q52_2", "q52_3", "q54","q55")]
colnames(selected_df) <- c(
  "q3" = "性別",
  "q4" = "年齢",
  # "q5"="結婚状況",
  # "q6" = "最終学歴",
  # "q51" = "オタクへの自覚時期",
  "q52_1" = "対象とするオタクジャンル（アニメ）",
  "q52_2" = "対象とするオタクジャンル（漫画）",
  "q52_3" = "対象とするオタクジャンル（ゲーム）",
  # "q53" = "オタクのタイプ",
  "q54" = "出費",
  "q55" = "SNSアカウント"
)
#"性別","年齢",`対象とするオタクジャンル（アニメ）`,`対象とするオタクジャンル（漫画）`,`対象とするオタクジャンル（ゲーム）`,"出費","SNSアカウント"

# 選択された列を標準化する
selected_df_scaled <- selected_df %>%
  mutate_at(vars(-"出費"), scale)
# 標準化されたデータで重回帰モデルを作成
model <- lm(出費 ~., data = selected_df_scaled)
summary(model)

### 対応分析
newtea = selected_df
newtea2 <- cbind(newtea,性別=ifelse(selected_df$性別=="0","男性","女性"))
newtea2 <- cbind(newtea2,年齢=ifelse(selected_df$年齢<=30, "若者","中高年"))
newtea2 <-cbind(newtea2,`対象とするオタクジャンル(アニメ）`=ifelse(selected_df$`対象とするオタクジャンル（アニメ）`=="1","アニメオタク","アニメではない"))
newtea2 <-cbind(newtea2,`対象とするオタクジャンル（漫画）`=ifelse(selected_df$`対象とするオタクジャンル（漫画）`=="1","漫画オタク","漫画ではない"))
newtea2 <-cbind(newtea2,`対象とするオタクジャンル（ゲーム）`=ifelse(selected_df$`対象とするオタクジャンル（ゲーム）`=="1","ゲームオタク","ゲームではない"))
newtea2 <-cbind(newtea2,出費=ifelse(selected_df$出費>=10000,"高支出","低支出"))
newtea2 <-cbind(newtea2,SNSアカウント=ifelse(selected_df$SNSアカウント=="1","垢有","垢梨"))
newtea <- subset(newtea2, select = -c(性別, 年齢, `対象とするオタクジャンル（アニメ）`, `対象とするオタクジャンル（漫画）`, `対象とするオタクジャンル（ゲーム）`, 出費, SNSアカウント))
head(newtea)

##多重コレスポンス分析
cats = apply(newtea, 2, function(x) nlevels(as.factor(x)))

# 多重コレスポンデンス分析を適用
mca1 = MCA(newtea, graph = FALSE)

# 変数の名前を取得
var_names = rownames(mca1$var$coord)

# data frame with variable coordinates(変数座標によるデータフレーム)
mca1_vars_df = data.frame(mca1$var$coord, Variable = var_names)

# plot of variable categories(変数カテゴリーのプロット)
ggplot(data=mca1_vars_df,
       aes(x = Dim.1, y = Dim.2, label = rownames(mca1_vars_df))) +
  geom_hline(yintercept = 0, colour = "gray70") +
  geom_vline(xintercept = 0, colour = "gray70") +
  geom_text(aes(colour=Variable), family = "HiraKakuPro-W3") +
  ggtitle("MCA plot of variables using R package FactoMineR") +
  theme_gray (base_family = "HiraKakuPro-W3")
