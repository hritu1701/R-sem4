#Modifying vector elements
x<-c(-3,-2,-1,0,1,2)
x[2]<-0      #modify 2nd element
x[x<0]<-5    #modify elements less than 0
x<-x[1:4]   #truncate x to first 4 elements
x
x<-NULL
x

#List
x<-list("a"=2.5, "b"=TRUE,"c"=1:3)
x
str(x)
x<-list(2.5,TRUE,1:3)
x
list_data<-list("red","green",c(21,32,11), TRUE, 51.23, 119.1)
pirnt(list_data)

#Creating a list containing a vector, a matric and a list(
list_data<=list(c("Jan","Feb","Mar"),matrix(c(3,9,5,1,-2,8),nrow = 2), list("green",12.3))
list_data

#Give names to the elements in the list.
name(list_data)<-c("1st quarter", "A_Matrix", "A Inner list")
#Show the list
print(list_data)
length(list_data)

#Access the elements of the list
print(list_data[1])
#access the element 3 but as it is the last element it will print all the elements
print(list_data[3])
#access the list elements(Matrix) using the name of the element.
print(list_data$A_Matrix)

#add the element at the end of the list:
list_data[4]<-"New element"
print(list_data[4])
list_data

#Remove the last element
list_data[4]<-NULL
#Print the 4th element
print(list_data[4])

#Update the 3rd element or insert new element at the third position of the list
list_data[3]<-"updated element"
print(list_data[3])
list_data

#Create two lists
list1<-list(1,2,3)
list2<-list("Sum","Mun","Tue")
list1
list2

#merge the two list
merged.list<-c(list1,list2)

n=c(2,3,5)
s=c("aa","bb","cc","dd","ee")
b=c(TRUE, FALSE, TRUE, FALSE, FALSE)
x=list(n,s,b,3)     #x contains copies of n,s,b
x
n
#list slicing
x[2]
#retrieve a slice with multiple members (o/p must be:- bb,ee)
x[[2]][c(2,5)]

#x[c(2,4)]    #not correct as per the requirement
#reference a list member directly
x[[2]]

#can modify its content directly (Update aa with ta)
x[[2]][2]="ta"
x[[2]]

#write a command to print the value cc and ee from the list
x[[2]][c[3,5]]

#modifying the first element of the list
x[1][3]<-10
x
x[[1]]<-10
x
s

v=list(alice=c(2,3,5), john=c("aa","bb"))
v
v[["alice"]]
v$alice
attach()
alice 
john
detach(v)

#create list
list1<-list (1:5)
print(list1)
list2<-list(10:14)
print(list2)

#convert the list to vector
v1<-unlist(list1)
v2<-unlist(list2)
print(v1)
print(v2)

#Matrix in detail

#elemenmts are arranged sequentially by row
m<-matrix(c(3:14),nrow=4)
print(m)

#elemenmts are arranged sequentially by column
n<-matrix(c(3:14),nrow=4, byrow=FALSE)
print(n)
n<-matrix(c(3:14),nrow=4, byrow=TRUE)
print(n)

#Define the column and row names
rownames=c("row1","row2","row3","row4")
colnames=c("col1","col2","col3")

#assign the row and column names after the creation of the matrix
P<-matrix(c(3:14), nrow=4, byrow=TRUE, dimnames = list(rownames,colnames))
print(P)

#access the elemenet at 3d column and 1st row
print(P[1,3])

#access the element at the 2nd column and the 4th row.
print(P[4,2])

#access only 2nd row
print(P[2])

#Access only 3rd row
print(P[3])

#Create two 2x3 matrices 
matrix1 <- matrix(c(3,9,-4,2,6), nrow = 2)
print(matrix1)


matrix2 <- matrix(c(5,2,0,3,4), nrow = 2)
print(matrix2)

#apply all the arithmetic opeartors on these two matrices 


#Add the matrices 
result <- matrix1 + matrix2
cat("Result of adddition ", "\n")
print(result)

#Subtract the matrices 
result <- matrix1 - matrix2
cat("Result of subtraction ", "\n")
print(result)

#Multiplication the matrices 
result <- matrix1 * matrix2
cat("Result of multiplication ", "\n")
print(result)

#Divide the matrices 
result <- matrix1 / matrix2
cat("Result of divide ", "\n")
print(result)

A = matrix(c(2, 4, 3, 1, 5 , 7), nrow = 2, ncol = 3 , byrow = TRUE )
#Fill matrix by rows 
A
A[2,3]            #element at 2nd row , 3rd column 
A[2]            #the 2nd row 
A[,3]            # the 3rd column 
A[,c(1,3)]            # the 1st and 3rd columns 

dimnames(A) = list(c("row1" ,"row2" ) , c("col1" ,"col2" ,"col3"))
A
colnames(A)
rownames(A)
A["row2" , "col3"]  #element at 2nd row , 3rd column 

# Replace the index locations with naming convention of thw matrix 
A[2,3]
A[2,]
A[,3]
A[ ,c(1,3)]



A = matrix(c(2,4,3,1,5,7), nrow=3 , ncol=2)
A
t(A)     #transpose of A


x <- c(1,2,3,4,5,6)
class(x)
dim(x) <- c(2,3)
x
class(x)
x[c(1,2),c(2,3)]       #select rows 1 & 2 and columns 2 & 3
x[c(1,2)]             #leaving column field blank
x[,]
x[-1,]
x[2,2] <- 10;x
x[x<4] <- 0;x



#The columns of two matrices having the same number of rows can be combined into a
#Larger matrix

A = matrix(c(2,4,3,1,5,7), nrow=3,ncol=2)
A

B = matrix(c(7,4,2), nrow=3,ncol=2)
B
cbind(A,B)

#ARRAY
#array(Data=NA ,dim=length(data) , dim name= NULL)

#Create two vectors of two different length
vector1<-c(9,2,3)
vector2<-c(10,16,17,13,11,15)
#Take these vectors as input to the array
result<-array(c(vector1,vector2),dim=c(3,3,2))
print(result)

#Create two vectors of two different lengths(Naming columns and rows)
vector1<-c(2,9,6)
vector2<-c(10,15,16,13,11,12)
column.names<-c("col1","col2","col3")
row.names<-c("row1","row2","row3")
matrix.names<-c("matrix1","matrix2")
#Take these vectors as input to the array
result<-array(c(vector1,vector2),dim=c(3,3,2),dimnames=list(row.names,column.names,matrix.names))
print(result)
#Print the third row of second matrix of the array(ACCESSING)
print(result[3,,2])

#print the element in the the 1st row and 3d column of the 1st matrix
print(result[1,3,1])

#print the 2nd Matrix
print(result[,,2])

#Create two vectors of different lenghts
vector1 <- c(1,2,3)

## 7 Levels
## UP, HP Labels
#create Ordinal categorical vector 
day_vector <- c('evening' ,'morning' , 'afternoon' ,'midday' ,'midnight', 'evening')
day_vector

#convert day__vector to a factor with ordered level
factor_day <- factor(day_vector, order = TRUE ,levels =c('evening' ,'morning' , 'afternoon' ,'midday' ,'midnight'))



#print the new variable
factor_day
summary(factor_day)

#Generating Factor Levels: Syntax: gl(n,k,labels)
v <- gl(3, 4, labels = c("India" , "USA" , "Russia"))
print(v)
BigData <- gl(3,2,labels = c("Hadoop" , "Spark" , "Flink" ))
print(BigData)


x <- factor(c("Single" , "married", "married" , "Single"  ))
x
x <- factor(c("Single" , "married", "married" , "Single"), levels = c("Single" , "married", "divorced"  ))

x
str(x)
x[c(2,4)]
x[-1]
x[2] <- "divorced"      #modify second element
x
x[3] <- "widowed"       #can not assign values outside levels 
x

levels(x) <- c(levels(x), "widowed")    #add new level
x[3] <-"widowed"
x

#DATA FRAME 
#Create  a,b,c,d variables
a <- c(10,20,30,40)
b <- c('book' ,'pen' ,'textbook' ,'pencil_case')
c <- c(TRUE , FALSE ,TRUE , FALSE)
d <- c(2.5 , 8 ,10 ,7)


#Join the variables to create a data frame 
df <- data.frame(a,b,c,d)
df

#Name the data frame
names(df) <- c('ID' ,'items' ,'store' ,'price')
df

#print the structure 
str(df)

##Select row 1 in column 2
df[1, 2]

##Select Rows 1 to 2
df[1:2,]

#Seleect columns 1
df[,1]

##Select Rows 1 to 3 columns 3 to 4
df[1:3, 3:4]
df[1:3 , c(2,4)]

#slice with columns name 
df[,c ('ID' , 'store')]

#Create a new vector

dfquantity <-quantity
quantity <- quantity
df

#Select the column ID
df$ID
x <- data.frame("SN" = 1:2, "Age" = c(21,15) , "Name" = c("John" ,"Dora"))
str(x)    #structure of x
x <- data.frame("SN" = 1:2, "Age" = c(21,15) , "Name" = c("John" ,"Dora"), stringsAsFactors = FALSE)
str(x) #now the third column is a character vector
x["Name"]
x$Name 
x[["Name"]]
x[[3]]
x
x[1,"Age"] <- 20; x
rbind(x,list(1,16,"Paul"))
cbind(x,State=c("NY" ,"FL"))
x$State <- c("NY" ,"FL");x
x$State <- NULL
x
x <- x[-1,]
x
