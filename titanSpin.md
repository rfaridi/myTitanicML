This is titan spin first part smoothly reading in data
first load the data


```r
load("./RDATA/titanic_train.RData")
load("./RDATA/titanic_test.RData")
```

Let's see how it goes
First let's check the proportion of survival


```r
prop.table(table(titanic$Survived))
```

```
## 
##         0         1 
## 0.6161616 0.3838384
```

in the above we see that most of them did not survive. so our best prediction is  all are dead.
that's what we do here


```r
titanic.test$Survived  <- 0
submit <- data.frame(PassengerID=titanic.test$PassengerId,Survived=titanic.test$Survived)
write.csv(submit,file="./SUBMIT/theyAllPerish.csv",row.names = F)
```

So we go to kaggle site and upload the above mentioned data
