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

##6.
AngleFn<-function(ang)
{
        x<-ang/90
        while(x>4){
                x<- x-4
        }
        if(x<=4)
        {
                switch(x,
                       "1"={print("Quaderent 1")},
                       "2"={print("Quaderent 2")},
                       "3"={print("Quaderent 3")},
                       "4"={print("Quaderent 4")},
                       stop("Enter something that switches me!"))
        }
}

##7.(a)
Weekday<-function(day,month,year)
{
        c<-substring(year,0,2)
        y<-substring(year,3)
        y<-as.integer(y)
        c<-as.integer(c)
        if(month>12)
                print("enter the correct one")
        else
        {
                month<-month-2
                if(month==0)
                        month<-12
                else if(month==-1)
                        month<-11
                
                k<-(round(abs(2.6*month-0.2)+day+y+(y/4)+(c/4)-2*c))%%7
                print(k)
                if(k==0)
                        k<-7
                switch(k,
                       
                       "1"={print("SUNDAY")},
                       "2"={print("MONDAY")},
                       "3"={print("WEDNESDAY")},
                       "4"={print("TUESDAY")},
                       "5"={print("THRUSDAY")},
                       "6"={print("FRIDAY")},
                       "0"={print("SATERDAY")},
                       stop("Enter something that switches me!"))
        }
}

##7.(b)
Weekday1<-function(day,month,year)
{
        for(i in 1:length(day))
        {
                c<-substring(year[i],0,2)
                y<-substring(year[i],3)
                y<-as.integer(y)
                c<-as.integer(c)
                if(month[i]>12)
                        print("enter the correct one")
                else
                {
                        month[i]<-month[i]-2
                        if(month[i]==0)
                                month[i]<-12
                        else if(month[i]==-1)
                                month[i]<-11
                        
                        k<-(round(abs(2.6*month[i]-0.2)+day[i]+y+(y/4)+(c/4)-2*c))%%7
                        print(k)
                        if(k==0)
                                k<-7
                        switch(k,
                               
                               "1"={print("SUNDAY")},
                               "2"={print("MONDAY")},
                               "3"={print("WEDNESDAY")},
                               "4"={print("TUESDAY")},
                               "5"={print("THRUSDAY")},
                               "6"={print("FRIDAY")},
                               "0"={print("SATERDAY")},
                               stop("Enter something that switches me!"))
                }
        }
}
##8.
testLoop<-function(n)
{
        x<-c(1,2)
        for(j in 3:n)
        {
                c<-x[j-1]+(2/x[j-1])
                x<-c(x,c)
        }
        return(x)
}

