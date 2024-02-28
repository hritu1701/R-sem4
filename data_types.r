#My first program in R 
mystring <- "Hello , World!"
print(mystring)
mystring
# ("my first code", mystring)
print (class(myString))
x <- 5
x
#Do the addition of 2 numbers.
x <- 10
y <- 30
z <- x+y
z
print(paste("Addition of 2 numbers" ,z))


#write a code to  use all the arithmetic operators 
a <- 39
b <- 45
c1 <- a+b
print(paste("Addition of 2 numbers" ,c1))
c2 <- a-b
print(paste("Subtraction of 2 numbers" ,c2))
c3 <- a*b
print(paste("Multiplication of 2 numbers" ,c3))
c4 <- a/b
print(paste("Division of 2 numbers" ,c4))

val1 <- readline(prompt ="enter the first value:")
val2 <- readline(prompt ="enter the second value:")
p <- as.integer(val1) + as.integer(val2)
print(paste("addition of two numbers is:",p))

#vectors
#creating a vector

apple<-c('red','green','yellow')
print<-(class(apple))
print(apple)

#arthematic operations
#if the length of the first and the second is not same then it will recycle them.
v<-c(2,4,6,8)
t<-c(1,3,5)
print(class(v))
print(v+t)

x <- c(2,1,3,4)
y <- c(9,4)
x+y #element of y is recycled to 9,4,9,4
x-1 # Scalar 1 is recycled to 1,1,1,1

#x<- x-1
#x
y <- x+c(1,2,3)
y


#do all above mentioned commands for subtraction arithmetic operation
x <- 5
x <- 16
y%%x #q
y%%x #r
y <- c(2,5,5,6)



#relational
v <- c(2,5.5,6,9)
t <- c(8,2.5,14,9)
print(v>t)
print(v>t)
#likewise do all the relational operators .>= , <= , != ,==

#logical
x <- c(TRUE,FALSE,0,6)
y <- c(FALSE,TRUE,FALSE,TRUE)
x <- c(4,FALSE,0,6)
y <- c(0,TRUE,FALSE,TRUE)
!x
x&y
x&&y
x|y
x||y

a<- TRUE
b<- FALSE
a&&b


v <- c(3,0,TRUE,2+2i)
t <- c(0,3,TRUE,2+3i)
print(v||t)


#other operators
v <- 2:8
print(v)
v1 <- 8
v2 <- 12
t <- 1:10
print(v1 %in% t)
print(v2 %in% t)

#Vector  homogenous data type

#c means combine

M = matrix(c ( 2,6,5,1,10,4), nrow=2,ncol=3,byrow = TRUE)
M
t = M %*% t(M)
print(t)

#A list is an R object which can contain many diff.  types of elements inside 
#it like vectors,functions and even another list inside it 
#one dimensional
#hetrogenous
#Create a list

list1 <- list (c(2,5,3),21.3,sin)
list(list1)
# Print the list
print(list1)


#A matrix is a two dimensional rectangular data set. It can be creating using a 
#homogenous
#vector input to the matrix function
#Create a matrix
M = matrix(c ('a','a','b','c','b','a'), nrow = 2, ncol = 3 ,byrow = TRUE)
M = matrix(c ('a','a','b','c','b','a'), nrow = 2, ncol = 3)
print(M)

#Element Distribution - > the data in matrix is by default distributed column wise





#ARRAY

#while matrices are confined to two dimensions, arrays can be of any number of dimensions
#The Array functions takes a dim attribute which creates the required number of dimension
#the below example we create an array with two elements which are 3x3 Matrices each
#homogenous
#Create an array

a <- array(c('green' ,'yellow' , 'blue'), dim=c(3,3,3))
a <- array(c('green' ,'yellow' , 'blue'), dim=c(3,3,3),dimnames = NULL)
print(a)

#Element Distribution - > the data in Array is by default distributed column wise



#Factors  are the r-objects which are created using a vector . It stores the vector along
#with the distinct values of  the elements in the vector as labels.
#Factors are created using the using the factor() function .
#oflevels
#create a factor


#apple_colors <- (c'green' ,'yellow' , 'blue' , 'red' , 'red', ' green')

#variables are columns 
#rows are observations
#  $ is acess operator



BMI <- data.frame(
  gender = c("Male" ,"Male" ,"Female"),
  height = c(152, 171.5, 165),
  weight = c(81,93,78),
  Age = c(42, 38 , 26)
)

BMI$gender <- as.factor(BMI$gender)
print(BMI)
summary(BMI)
nrow(BMI)
ncol(BMI)
dim(BMI)
str(BMI)
BMI$weight


#create an employee table for 6 columns and 5 rows and show the distinct departments

employee_data <- data.frame(
  EmployeeID = c(1, 2, 3, 4, 5),
  FirstName = c("John", "Dawayne", "Mitchell", "Alice", "Charlie"),
  LastName = c("Cena", "Smith", "Johnson", "Kaushik", "Chaplin"),
  Department = c("HR", "IT", "Finance", "IT", "Marketing"),
  Salary = c(50000, 60000, 70000, 55000, 75000),
  Age = c(30, 25, 35, 28, 40)
)

print("Employee Table:")
print(employee_data)