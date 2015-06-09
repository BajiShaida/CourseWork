n<-readline(prompt="Enter the value of n: ") 
l<-seq(2:n)
for(i in c(2:n))
{
        for(j in c(2:n))
        {
                
                m<-i*j
                
                l<-replace(l,m,NA)
                
        }
        # l<-replace(l,m,NA)
        #print(l)
}
#l<-na.omit(l)
wha<-!is.na(l)
l<-l[wha]
print(l)
