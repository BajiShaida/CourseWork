#The occupant in room #1 exits, and opens the closed door to every room in the hotel (starting with his/her own). The occupant in room 
#2 exits, and closes the now open door to every second room in the hotel leaving the others alone. The occupant in room #3 exits, and now finding somedoors open and some closed, visits every third room in the hotel and closes the door if it is open, opens it if it closed, leaving the others alone
n=100
doors<-rep(0,n)
for(i in c(1:n))
{
        act=seq(i,n,i)
        for(j in act){
                if(doors[j]==0)
                {
                        doors[j]=1
                }
                else
                {
                        doors[j]=0
                        
                }
        }
        #num<-"the door number"
        #cat(num,i,"\n")
        #print(doors)
}
for(i in c(1:n))
{
        if(doors[i]==1)
                print(i)
}
print(doors)
print("1=open   0=close")

# Another Way of doing this program

g<-rep("close",10)
for(k in c(1:10))
{
        for(j in c(1:10))
        {
                if(j%%k==0)
                {
                        if(g[j]=="close")
                        {
                                g[j]="open"
                        }
                        else 
                        {
                                g[j]="close"
                        }
                }
        }
        #num="persen"
        #print(cat(num,i))
        print(g)
}

