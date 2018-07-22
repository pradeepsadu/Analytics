#Data Frames
#(rollno = c('MBA1','MBA2'))
#(name = c('Student1','Student2'))
df = data.frame(rollno, name)
df
(rollno = paste('MBA',1:60,sep='-'))
(name = paste('Student',1:60,sep='-'))
df = data.frame(rollno, name)
df
gender = sample(c('M','F'),size = 60, replace = T)
gender
set.seed(1234)
(gender = sample(c('M','F'),size = 60, replace = T, prob = c(.4,.6)))
gender
table(gender)
prop.table(table(gender))
df = data.frame(rollno, name, gender)
df
head(df)
tail(df)
head(df, n=3)
marks = rnorm(60, mean=60, sd=10)
marks
plot(density(marks))
df = data.frame(rollno, name, gender, marks)
df
x = c(23.3, 34.742)
floor(x); ceiling(x); trunc(x); round(x,1)
floor(marks)
str(df)
df = data.frame(rollno, name, gender, marks, stringsAsFactors = F)
str(df)
summary(df)
df$gender = factor(df$gender)
str(df)
summary(df)
grades= sample(c('Poor','Good','Excellent'),size=60, replace=T, prob=c(.2,.3,.5))
grades
table(grades)
prop.table(table(grades))
grades = factor(grades, levels=c('Poor','Good','Excellent'), ordered=T)
grades
summary(grades)
df = data.frame(rollno, name, gender, marks, grades, stringsAsFactors = F)
df
summary(df)
df$gender=factor(df$gender)
str(df)
summary(df)
dim(df)
class(df)
aggregate(df$marks, by=list(df$gender), FUN=sum)
aggregate(df$marks, by=list(df$gender), FUN=mean)
aggregate(marks~gender, data=df, FUN=mean)
aggregate(marks~gender+grades, data=df, FUN=mean)
df$marks2 = runif(60,50,100)
head(df)
aggregate(cbind(marks,marks2)~gender, data=df, FUN=mean)
cbind(gender,grades)
rbind(gender,grades)
df
df[df$gender=='M',]
df[df$gender=='M', 1]
df[ df$gender=='M', c('rollno','gender')]
