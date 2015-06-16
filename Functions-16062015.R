##1.(a)
tmpF1<-function(xVec)
{
        v<-0
        for( x in c(1:length(xVec)))
        {
                v<-c(v,xVec[x]^x)
        }
        return(v[-1])
}

tmpF2<-function(xVec)
{
        v<-0
        for( x in c(1:length(xVec)))
        {
                v<-c(v,xVec[x]^x/x)
        }
        return(v[-1])
}

##1.(b)
tmpF3<-function(x,n)
{
        total=0
        for( j in c(1:n))
        {
                v<-x^j/j
                total=total+v
        }
    print(1+total)
}

##2.create the function that will print the average of 3 no. in vector 
tmpFn<-function(xVec)
{
        h<-0
        for(i in c(1:length(xVec)-2))
        {
              h<-c(h,(xVec[i]+xVec[i+1]+xVec[i+2])/3)
              
        }
        return(h[-1])
}

##3.write the function that will be follwed by the function.
tmpFn1<-function(xVec)
{
        v<-0
        for(i in c(1:length(xVec)))
        {
                if(xVec[i]>=2)
                        v<-c(v,(xVec[i]^2)+4*xVec[i]-7)
                else if(xVec[i]<2 & xVec[i]>=0)
                        v<-c(v,(xVec[i]+3))
                else
                        v<-c(v,(xVec[i]^2)+2*xVec[i]+3)
        }
        return(v[-1])
}

##4.Write a Function that will double the odd values in the matrix.
matFn<-function(matr)
{
        x=nrow(matr)
        y=ncol(matr)
        for(i in c(1:x))
        {
                for(j in c(1:y))
                {
                        if(matr[i,j]%%2!=0)
                                matr[i,j]<-matr[i,j]*2
                        else
                                next()
                }
        }
        return(matr)
}

##5.Create a Function that will give the Required Pattren.
matFn1<-function(n,k)
{
        matE <- matrix(0,ncol = n,nrow = n)
        matE[abs(col(matE)-row(matE))==0]<-k
        matE[abs(col(matE)-row(matE))==1]<-1
       return(matE)
}