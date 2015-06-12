##1(a)(1,2,3,4,.....,18,19,20)
x<-c(1:20)
x

##1(b)(20,19,18,.....,2,1)
y<-c(20:1)
y

##1(c)(1,2,3,4,....20,19,18,....1)
z<-c(x,y[-1])
z

##1(d)
temp<-c(4,6,3)
temp

##1(e)(4,6,3,4,6,3,4,6,3,....) 10 times
a<-rep(temp,10)
a

##1(f) 11 times 4,10 times 6,10 times 3.
b<-rep(temp,length=31)
b
##1(g)10 times 4,20 times 6 and 30 times 3.
c<-rep(temp,c(10,20,30))
c

##2.create a vector e^x cos(x).
x<-seq(3,6,0.1)
value<-exp(x)*cos(x)
value

##3(a)
t<-seq(3,36,3)
s<-seq(1,34,3)
for(i in c(1:12)){
        tes<-c(0.1^t[i]*0.2^s[i])
        print(tes)
}
##Another Method for 3(a)
g<-0.1^(seq(3,36,3))*0.2^(seq(1,34,3))
g

##3.(b)
g<-seq(1:25)
for(i in c(1:25)){
        res<-(2^g[i])/g[i]
        print(res)
}
##another Way of Doing 3(b)
g<-2^(1:25)/(1:25)
g

##4.(a)
su=0
for(i in c(10:100))
{
        r<-(i^3)+4*(i^2)
        su<-su+r
        ##print(su)
}
print(su)
##Another Method of 4(a)
h<-c(10:100)^3+4*c(10:100)^2
h

##4.(b)sum of 1:25 for (2^i/i)+3^i/(i^2)
su=0
for(i in c(1:25))
{
        r<-((2^i)/i)+((3^i)/(i^2))
        su<-su+r
        #print(su)
}
print(su)
##Another Method For 4(b)
f<-(2^(1:25)/(1:25))+((3^(1:25)/(1:25)^2))
f

##5.(a)print lable 1,lable 2,lable 3,....
pat<-paste("lable",c(1:30))
pat

##5.(b)print fn1,fn2,fn3.....
pat1<-paste("fn",c(1:30),sep = "")
pat1

##6
xVec<-sample(0:999,250,replace = TRUE)
yVec<-sample(0:999,250,replace = TRUE)
xVec
yVec
##6.(a)
n=250
for(i in c(2:250))
{
        sub1<-yVec[i]-xVec[i-1]
        print(sub1)
}

##6.(b)
for(i in c(1:250))
{
        vec<-sin(yVec[i])/cos(xVec[i+1])
        print(vec)
}

##6.(c)Sum of 1:n to x1+2*x2-x3,x2+2*x3-x4,.....
for(i in c(1:250))
{
        svec<-xVec[i]+2*xVec[i+1]-xVec[i+2]
        print(svec)
        
}
##Another Method for 6(c)
sdt<-xVec[1:248]+2*xVec[2:249]-xVec[3:250]
sdt

##6.(d)Sum of 1:n-1 to e^(-xVec[i+1])/xVec[i]+10
add=0
for(i in c(1:249))
{
        ex<-exp(-xVec[i+1])/(xVec[i]+10)
        #print(ex)
        add=add+ex
}
print(add)
#Another Method for 6(d)
g<-(exp(-xVec[2:250])/(xVec[1:250]+10))
sum(g)

##7
order(xVec)
order(yVec)

mean(xVec)
mean(yVec)

sqrt(xVec)
sqrt(yVec)

sum(xVec)
sum(yVec)

abs(xVec)
abs(yVec)

##7.(a)values of yVec>600
gts<-yVec[which(yVec>600)]
gts

gts1<-which(xVec>600)
gts1
##7.(b)indexs of yVec>600
gtr<-which(yVec>600)
gtr

##7.(c)same index valus in xVec which are from yVec>600
xVec<-sample(0:999,250,replace = TRUE)
yVec<-sample(0:999,250,replace = TRUE)
for(i in c(1:250))
{
        for(j in c(1:250))
        {
                if(xVec[i]==yVec[j] & yVec[j]>600)
                {
                        same=yVec[j]
                        #print(j)
                        print(same)
                        
                }
        }
}

##Another problem
gtr<-which(yVec>600)
for(i in gtr)
{
        print(xVec[i])
}


##7.(d)|x1-X|^0.5,|x2-X|^0.5.... where X is the Mean of xVec
X<-mean(xVec)
for(i in c(1:250))
{
        ht<-(abs((xVec[i]-X)))^(0.5)
        print(ht)
}

##7.(e)Max number and minimum of 200.
n<-max(yVec)
n-200
h<-yVec[which(yVec>=798)]
length(h)

##7.(f)how many numbers are divisible by 2 in yVec?
count=0
for(i in yVec)
{
        if(i%%2==0)
        {
                count=count+1
        }
}
print(count)

##7.(g)increasing order of yVec to sort of xVec. 
xVec[order(yVec)]

##7.(h)pic the values of yVec in (1,4,7...)
yVec[seq(1,250,3)]

##8.
1+sum(cumprod(seq(2,38,2)/seq(3,39,2)))
