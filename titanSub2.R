#' let's load the library

#+
require(dplyr)
require(janitor)

#' another try
#'let's see whether we can improve

 #'disaster was famous for saving women and children, let's check what's happening with them

#'load the data

#+
load("./RDATA/titanic_train.RData")
load("./RDATA/titanic_test_sub1.RData")

#' let's have a look at the gender ratio

#+
prop.table(table(titanic.train$Sex))

#' we find that around 35% are female

#' let's check how how survived accross male and female

#+ 
titanic.train %>% 
	crosstab(Sex, Survived) %>%
        adorn_crosstab(digits=1,
		       show_totals=FALSE,
		       show_n=F)
#' here we see that among the females most of the people survived. so let's make another crude prediction 
	#' and see whether it works better. the prediction here is that all the females survived.

#+
titanic.test.sub2 <- titanic.test %>%
			mutate(Survived =0,
			       Survived=replace(Survived,Sex=="female",1))
save(titanic.test.sub2,file="./RDATA/titanic_test_sub2.RData")

#' now let's export the data for submission

#+ 
submit <- titanic.test.sub2 %>%
              select(PassengerId,Survived)
write.csv(submit,file= "./SUBMIT/menAllPerish.csv",row.names=F)
			       


