spam$target <- as.integer(as.factor(spam$type)) - 1
sim <- 10
result <- matrix(0, sim)

for (i in 1:sim) {
  train.id <- sample(nrow(spam), 400)
  train.data <- spam[train.id, -which(names(spam) == "type")]
  test.data <- spam[-train.id, -which(names(spam) == "type")]
  label.data.train <- train.data$target
  label.data.predict <- test.data$target
  train.data.xg <- train.data[, !(names(train.data) == "target")]
  test.data.xg <- test.data[, !(names(test.data) == "target")]
  xgb.data <- xgb.DMatrix(data = as.matrix(train.data.xg), label = label.data.train)
  xgb.data.predict <- xgb.DMatrix(data = as.matrix(test.data.xg))
  
  param <- list("objective" = "binary:logistic", "eta" = 0.01, "min_child_weight" = 5)
  model <- xgboost(param = param, data = xgb.data, nrounds = 1000)
  
  predict_xgb <- predict(model, xgb.data.predict)
  a <- ifelse(predict_xgb > 0.5, 1, 0)
  
  result[i] <- sum(a == label.data.predict) / length(a)
}

mean(result)