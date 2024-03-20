#Get and print current working directory

print(getwd())

#set current working directory

setwd("C:/Users/hritu/Desktop/R sem4") 

#get and print current working directory

print(getwd())
data <-read.csv("sales dataset.csv")
View(data)
print(is.data.frame(data))
print(ncol(data))
print(nrow(data))
str(data)
summary(data)

#get the max sale amount

sale<-max(data$Sales_Amt)
print(sale)

#Get those all the details those having max sales amount.
#Return subsets of vectors, matrices or data frames which meet conditions.

retval<-subset(data,Sales_Amt==max(Sales_Amt))
View(retval)


retval<-subset(data,Department=="Finance")
View(retval)

#Fetch the details for finance department who have sales amount greater than 1000
retval<-subset(data,Department=="Finance" & Sales_Amt>1000)
View(retval)

newdata<-subset(data,Department=="Finance" & Sales_Amt>1000,select=c('Employee.Name','Employee.Country'))
View(newdata)

#Fetch all the details after 1 jan 2014
print(getwd())
setwd("C:/Users/hritu/Desktop/R sem4") 
data <-read.csv("sales dataset.csv")
View(data)

#converting date column in date month format
data$Sales.Date <- as.Date(data$Sales.Date, format="%d-%m-%Y") 
retval<-subset(data,Sales.Date>as.Date("01-01-2014","%d-%m-%Y"))
View(retval)
 

#working with built in data sets.
data()
#loading
View(mtcars)
?mtcars
#print the first 6 rows
head(mtcars,10)
tail(mtcars,4)
?mtcars
nrow(mtcars)
ncol(mtcars)
summary(mtcars)
str(mtcars)

#explore data
data(iris)
data(ToothGrowth)
head(PlantGrowth)
data(USArrests)
data("airquality")
View(airquality)
head(airquality)

#explore data
data(iris)
data(ToothGrowth)
head(PlantGrowth)
data(USArrests)
data("airquality")
View(airquality)
head(airquality)
subset(airquality, Temp>80,select = c(Ozone,Temp))
subset(airquality, Day==1,select = -Temp)
subset(airquality, select=Ozone:Wind)

with(airquality,subset(Ozone,Temp>80))

X<-c(1,5,8,4,6)
x
which(x==5)
which(x!=5)
datasets::npk
?npk
which(npk$yield==62)
which(npk$yield==48.8) & (npk$N==1)
which(npk$yield==max(npk$yield))


#SQLDF
data()
data(iris)
sqldf("select * from iris limit 5")
View(iris)
sqldf("select count(*) from iris")
sqldf("select species, count(*) from iris group by species")


sqldf("select * from iris where [Sepal.Length]>5")
sqldf("select max([Petal.Length]) from iris")
data()
data("UCBAdmissions")
View(UCBAdmissions)
str(UCBAdmission)

ucb<-as.data.frame((UCBAdmissions))
str(ucb)
sqldf("select  * from ucb")
sqldf("select  * from ucb where Gender = 'female'")
sqldf("select  * from ucb where Admit = 'Admitted'")

sqldf("select * from ucb where Admit = 'Admitted' order by Freq DESC")
sqldf("select distinct Dept from ucb")

sqldf("select sum([Freq]) from ucb where Admit = 'Admitted'")

sqldlf("select sum(Freq) from ucb where Admit = 'Rejected'")

sqldf("select sum(Freq) as total_dudes from ucb where Admit = 'Admitted' AND Gender = 'male'")

sqldf("select sum(Freq) as total_ladies from ucb  where Admit = 'Rejected' AND Gender = 'Female'")

sqldf("select sum(Freq) from ucb where Admit = 'Admitted' AND Dept = 'E'")
sqldf("select Dept, sum(Freq) from ucb where Admit = 'Admitted' group by Dept")
sqldf("select Dept, sum(Freq) from ucb where Admit = 'Rejected' group by Dept")

#create another data table, named majors

majors<-data.frame(major = c("math","biology","enginerring","computer science","history","architecture"),Dept=c(Letters[1:5],"others"),faculty=round(runif(6,min=10,max=30)))
majors
sqldf("select * from majors")
#how many majors are there
sqldf("select count(major) from majors")
#minimum number of students rejected 
sqldf("select min(Freq from ucb where Admit = 'Rejected' ")
#wild card match Queries
sqldf("select * from ucb where Freq between 20 AND 100")
sqldf("select * from ucb where Gender Like 'Fe%'")
sqldf("select * from ucb where Gender Like '%male%'")
sqldf("select * from ucb where Gender Like 'Ma%'")
sqldf("select * from ucb where Gender = 'Female' AND Freq >= 100")
sqldf("select * from ucb where Gender Like '_ale'")
sqldf("select * from ucb where Gender Not Like 'M_l_'")


#manipulation & Nested Queries 
#which department is having maximum number of admitted students.

sqldf("select Dept from ucb where Freq = (select max(Freq) from ucb where Admit = 'Admitted')")

#which department had the most admitted Female student 

sqldf("select Dept from ucb where Freq = (select max(Freq) from ucb where Gender = 'Female' AND Admit = 'Admitted')")


#Name of department , which is having most faculty members

sqldf("select Dept from majors where Faculty = (select max(Faculty) from majors)")
majors

#Join Queries
#join the two tables together by the common key

sqldf("select * from ucb inner join majors on ucb.Dept = majors.Dept")

#join the table on the left with resultant null's on the right table
sqldf("select * from ucb left join majors on ucb.Dept = majors.Dept")


#join the table on the right with the left 
sqldf("select * from ucb right join majors on ucb.Dept = majors.Dept")



#DPLYR

print(getwd())
setwd("C:/Users/hritu/Desktop/R sem4")
print(getwd())
data2 <-read.csv("SalesDatafor preprocessingmaneet kaur.csv")
View(data2)

s0<-read.csv(file.choose(),header=TRUE, stringsAsFactors = TRUE)
str(s0)
summary(s0)

s1<-na.omit(s0)
View(s1)
summary(s1)

#Replace the missing values with mean value in each variable.

s0$Sales[is.na(s0$Sales)] <- mean(s0$Sales, na.rm = TRUE)
s0$Profit[is.na(s0$Profit)] <- mean(s0$Profit, na.rm = TRUE)
s0$Unit.Price[is.na(s0$Unit.Price)] <- mean(s0$Unit.Price, na.rm = TRUE)
summary(s0)







