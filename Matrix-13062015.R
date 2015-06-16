##1.(a)Creating a Matrix and a^3
m<-matrix(c(1,5,-2,1,2,-1,3,6,-3),nrow = 3,ncol = 3)
m
m%*%m%*%m
##1.(b)Adding the 2 and 3 Column and Saving in 3 column.
m[,3]<-m[,3]+m[,2]
m

##2.finding the B^T*B
x<-rep(10,15)
mn<-matrix(c(x,-x,x),ncol= 3)
B<-t(mn)           
B%*%mn
mn
##3.printing the Pattren using col() and row().
matE <- matrix(0,ncol = 6,nrow = 6)
matE[abs(col(matE)-row(matE))==1]<-1
matE
##Another way of doing.
matE1<-matrix(c(0,1,0,0,0,0,1),nrow = 6,ncol = 6)
matE1
##4.printing the given pattren using outer().
x<-0:4
y <- 0:4
matrix(outer(y, x, "+"),nrow = 5,ncol = 5)

##5.printing the matrix in the pattern.
mata<-matrix(outer(0:4,0:4,'+'),nrow = 5,ncol = 5)%%5
mata

##5(b)
mata1<-matrix(outer(0:9,0:9,'+'),nrow = 10,ncol = 10)%%10
mata1

##5(c)
mata2<-matrix(outer(0:8,0:8,'-'),nrow = 9,ncol = 9)%%9
mata2
##6.
x<-c(7,-1,-3,5,17)
x
matr<-matrix(0,ncol = 5,nrow = 5)
matr
abs(col(matr)-row(matr))+1

##7.(a)
set.seed(75)
aMat<-matrix(sample(10,size=60,replace = T),nrow = 6)
aMat
for(i in c(1:6))
{
        count=0
        for(j in c(1:10))
        {
                if(aMat[i,j]>4)
                        count<-count+1
        }
        print(count)   
}
##Another Way 
aMat[which(aMat>4)]
##7.(b)
for(i in c(1:6))
{
        count=0
        for(j in c(1:10))
        {
                if(aMat[i,j]==7)
                        count<-count+1
        }
        if(count==2)
                print(i)   
}
##7.(c)

for(i in c(1:10))
{
        a<-sum(aMat[,i])
        print(a)
}

##8.(a)
tot=0
for(i in c(1:20))
{
        for(j in c(1:5))
        {
                ha<-(i^4/(3+j)) 
                tot=tot+ha
        }
}
print(tot)

##8.(b)
tot1=0
for(i in c(1:20))
{
        for(j in c(1:5))
        {
                ha<-(i^4/(3+(i*j))) 
                tot1=tot1+ha
        }
}
print(tot1)

##8.(c)
tot2=0
for(i in c(1:10))
{
        for(j in c(1:i))
        {
                ha<-(i^4/(3+(i*j)))
                tot2=tot2+ha
        }
}
print(tot2)