#in r studio else should be written just after if body end        
#while 
i <- 1
while (i<6){
  print(i)
i = i+1
}


#for loop
for (val in sequence)
{
  statement
}

#Example
x <- c(2,5,3,9,8,11,6)
count <- 0
for(val in x) {
  if (val %% 2 == 0) count = count+1
}
print(count)


#print the number of odd numbers in vector
#if statement 
if (test_expression) {
  statement1
}




#Example 
x <- -5
if(x > 0){
  print("Non-negative number")
}else {
  print("Negative number")
}


#if else Ladder 
if (test_expression1){
  statement1 
} else if (test_expression2) {
  statement2
} else if (test_expression3) {
  statement3
} else {
  statement4
}

#Example
x <- 0
if (x < 0){
  print("Negative number")
} else if (x > 0) {
  print("Positive number")
} else
  print("Zero")


#Example 
x <- -5
if(x > 0){
  print("Non-negative number")
}else {
  print("Negative number")
}


#if else Ladder 
if (test_expression1){
  statement1 
} else if (test_expression2) {
  statement2
} else if (test_expression3) {
  statement3
} else {
  statement4
}

#Example
x <- 0
if (x < 0){
  print("Negative number")
} else if (x > 0) {
  print("Positive number")
} else
  print("Zero")


#example
a=c(5,7,2,9)
ifelse(a%%2==0,"even","odd")
#break statement
if(test_expression)
{
  break
}




#example
x<-1:5
for(val in x)
{
  if(val==3)
  {
    break
  }
  print(val)
}
#next statement
if(test_condition)
{
  next
}
#example
1:5->x
for(val in x)
{
  if(val==3)
  {
    next
  }
}


#repeat loop
repeat
{
  statement
}


#example
x<-1
repeat
{
  print(x)
  x=x+1
  if(x==6)
  {
    break
  }
}



#switch function
switch(expression,list)

#example
switch(2,"red","green","blue")
switch(1,"red","green","blue")
switch(4,"red","green","blue")
switch(0,"red","green","blue")->x
x
switch("color","color"="red","shape"="square","length"=5)
switch("length","color"="red","shape"="square","length"=5)
x<-switch(
  3,
  "my",
  "switch",
  "case"
)
print(x)
"12"->y
x<-switch(
  y,
  "9"="good morning",
  "12"="Good morning",
  "18"="Good evening",
  "21"="Good night"
)
print(x)


#example Armstrong
#taking input from user
num=as.numeric(readline(prompt='Enter the numeber: '))
#initialize sum
sum=0

#find the sum of the cube of each digit
temp=num
while(temp>0)
{
  digit=temp%%10
  sum=sum+(digit^3)
  temp=floor(temp/10)
}
#display the result
if(num==sum)
{
  print(paste(num,"s an armstromg"))
}else{
  print(paste(num,"is not an armstrong"))
}

#Fibonacci series
nterms=as.numeric(readline(prompt="enter the number: "))
a=0
b=1
count=2
if(nterms<=0)
{
  print("Fibonacci sequence: ")
  print(n1)
}else{
  if(nterms==1){
    print("fibonacci seqence ")
    print(n1)
  }else{
    print("Fibonacci sequence: ")
    nth=a+b
    print(nth)
    #update values
    a=b
    b=c
    count=count+1
  }
}


#Functions (function_name<-function(args_1,args_2, ....){ function body})
#create a function to print squares of numbers in the block

fun<-function(a)
{
  for(i in 1:a)
  {
    b<-i^2
    print(b)
  }
}

#call thw function
fun(4)

#create a function without an argument
fun<-function()
{
  for(i in 1:10)
  {
    print(i^2)
  }
}

#call the function without supplying an argument
fun()
#calling a function with argument values(byy position and by name)
#create a function with arguments
fun<-function(a,b,c)
{
  result<-a*b+c
  print(result)
}

#call the function by the position of argument
fun(6,7,15)

#call the function by the name of the argument
fun(a=15,b=6,c=7)
#calling a function with default argument
#create a function with argument
fun<-function(a=8,b=10)
{
  result<-a*b
  print(result)
}

#call the function without giving any argument
fun()

#call the function with giving the values of the  argument
fun(10,5)

#############################################################################

#math functions
x<-4
print(abs(x))
x<-4
print(sqrt(x))
x<-4.5
print(ceiling(x))
x<-2.5
print(floor(x))
x<-c(1.2,2.5,8.1)
print(trunc(x))
round(3.475,digits=2)
x<-4
print(cos(x))
print(sin(x))
print(sin(x))


#String function
x<-"abcdef"
substr(x,2,4)
substr(x,2,4)<-"22222"
x

str1<-c('abcd','bdcd','abcdabcd')
pattern<-'abc'
print(grep(pattern,str1,ignore.case=TRUE))

str1<-"England is beautiful but not part of EU"
sub("England","UK",str1)

paste('one',2,'three',4,'five')

a<-"Split all the characters"
print(strsplit(a,""))

str1<-"shuBHAm"
print(tolower(str1))
str1<-"shuNHAm"
print(toupper(str1))

#Statistical Function
a<-c(0:10,40)
a
xm<-mean(a)
print(xm)
a<-c(0:10,40)
xm<-min(xm)
print(xm)
a<-c(0:10,40)
xm<-sum(a)
print(xm)
a<-c(0:10,40)
xm<-max(a)
print(xm)

#other functions
a<-seq(1,10,2)
a
y<-rep(1:3,2)
y
x<-c(3,5,6,7,3,5,6,8,9,6,4,3,2,4,6,7,8,9)
y<-cut(x,3)
y



