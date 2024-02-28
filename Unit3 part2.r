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
                                                                                                



