# Arranging into 10 groups Using for loop.
mylist=NULL
group=seq(1:20)
for(i in 1:10)
{
  m=sample(group,2,replace = FALSE)
  group=group[-c(m)]
  mylist=rbind(m,mylist)
  print(m)
  print(group)
}
print(mylist)

# arranging 10 groups Without using for loop.
group=seq(1:20)
# list=matrix(sample(1:20,replace = FALSE),sample(1:20,replace = FALSE))
list=matrix(sample(1:20,replace = FALSE),sample(1:20,replace = FALSE),nrow = 10,ncol = 2)
print(list)

# -50 to 50 randam numbers and midpoints

for(i in c(1:10))
{
  n=runif(10,min=-50,max=50)
  l=sort(n)
  mid=(l[1]+l[10])/2
  matx=cbind(l,mid)
  print(matx)
}

# Without for loop
i<-1
while(i<=10)
{
  n=runif(10,min=-50,max=50)
  sortlist=sort(n)
  mid=(l[1]+l[10])/2
  matx=cbind(sortlist,mid)
  print(matx)
  i<-i+1
}