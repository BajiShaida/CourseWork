library(swirl)
swirl()

?read.table()


x<-c(3,6,8)
x
x/2
x^2
sqrt(x)

y<-c(2,5,1)
y
x-y
x*y
x[y>1.5]
y[x==6]

log(1000)
exp(log(1000))
sin(180)
cos(180)
sin(90)
cos(90)
cos(0)
sin(0)
con<-url("http://economictimes.indiatimes.com/","r")
b<-readLines(con)

#execersise 2 Week

ht<-c(180,165,160,198)
wt<-c(87,55,65,100)

meters<-ht/100
meters

BMI<-wt/(meters)^2
BMI

logvalues<-log(BMI)
logvalues

lists<-wt[BMI>25]
lists


dry <- c(77, 93, 92, 68, 88, 75, 100)
dry

sum(dry)
length(dry)

mean(dry)

sum(dry)/length(dry) ## Checking

sort(dry)

median(dry)

sd(dry)

var(dry)

sd(dry)^2

sum((dry-mean(dry))^2) / (length(dry)-1) ## Checking

min(dry)

max(dry)

summary(dry)


#Vectors operations

#1.conversion of centigrade to Fahrenheit:

centiG<-c(23,27,19)

Fahrenheit =(centiG*(9/5))+32
Fahrenheit

#2.Finding the Volume of cone 

R <- c(2.27, 1.98, 1.69, 1.88, 1.64, 2.14)
H <- c(8.28, 8.04, 9.06, 8.70, 7.58, 8.34)

pi*R^2*H
volume<-(pi*R^2*H)*(1/3)
volume

mean(volume)
median(volume)
sd(volume)
mean(volume[H<8.5])



which.min(c(10,3,5,1,7,8))
which.min(c(3,5,1,1,8))

?which.min


charry<-read.csv(file.choose(),sep=',')

head(charry)
charry
plot(charry)
summary(charry)

charry$Age
mean(charry$Age)
hist(charry$Age)

with(charry, hist(Height))
with(charry, mean(Height))

attach(charry)
Age
mean(Age)
hist(Age)

plot(Height, Age)
detach(charry)
Age





