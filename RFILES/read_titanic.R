titanic.train <- read.csv("./RAWDATA/train.csv",stringsAsFactors = F)
save(titanic.train,file="./RDATA/titanic_train.RData")

titanic.test <- read.csv("./RAWDATA/test.csv",stringsAsFactors = F)
save(titanic.test,file="./RDATA/titanic_test.RData")

