#Reading the files from the directory.
file=read.csv(file.choose(),header = T)

attach(file)

mean(file $SAL)
[1] 2073.214

max(file $SAL)
[1] 5000

min(file $SAL)
[1] 800

var(file $SAL)
[1] 1398314

summary(file)

EMPNO                ENAME                 JOB   
Min.   :7369   ADAMS        :1   ANALYST         :1  
1st Qu.:7588   ALLEN        :1   ANALYST         :1  
Median :7785   BLAKE        :1   CLERK           :2  
Mean   :7727   CLARK        :1   CLERK           :2  
3rd Qu.:7868   FORD         :1   MANAGER         :3  
Max.   :7934   JAMES        :1   PRESIDENT       :1  
(Other)      :8   SALESMAN        :4  
MGR               HIREDATE      SAL            COMM     
Min.   :7566   3-Dec-81    :2   Min.   : 800   Min.   :   0  
1st Qu.:7698    01-MAY-1981:1   1st Qu.:1250   1st Qu.: 225  
Median :7698    02-APR-1981:1   Median :1550   Median : 400  
Mean   :7739    08-SEP-1981:1   Mean   :2073   Mean   : 550  
3rd Qu.:7839    09-DEC-1982:1   3rd Qu.:2944   3rd Qu.: 725  
Max.   :7902    09-JUN-1981:1   Max.   :5000   Max.   :1400  
NA's   :1      (Other)     :7                  NA's   :10    
DEPTNO     
Min.   :10.00  
1st Qu.:20.00  
Median :20.00  
Mean   :22.14  
3rd Qu.:30.00  
Max.   :30.00  

class(file)
[1] "data.frame"

mean(SAL[DEPTNO==10])
[1] 2916.667

names<-ENAME[DEPTNO==20]
[1] SMITH         JONES         SCOTT         ADAMS        
[5] FORD  

barplot(file $SAL)

pie(file $SAL)
pie(file $DEPTNO)
boxplot(file $SAL)

#reading from the text file
plain.text=read.delim(file.choose(),header = T,sep = ",")


X<-matrix(c(1,2,3,4,5,6,7,8,9),nrow = 3,ncol = 3)

      [,1] [,2] [,3]
[1,]    1    4    7
[2,]    2    5    8
[3,]    3    6    9

Y<-matrix(0,nrow = 4,ncol = 3)

Y[1,]=c(10,20,30)

      [,1] [,2] [,3]
[1,]   10   20   30
[2,]    0    0    0
[3,]    0    0    0
[4,]    0    0    0

Y[c(2),]=c(1,20,30)

      [,1] [,2] [,3]
[1,]    0    0    0
[2,]    1   20   30
[3,]    0    0    0
[4,]    0    0    0

Y[ ,]=c(10,20,30,40)

      [,1] [,2] [,3]
[1,]   10   10   10
[2,]   20   20   20
[3,]   30   30   30
[4,]   40   40   40

x = matrix(1:3,nrow=4,ncol=6)

      [,1] [,2] [,3] [,4] [,5] [,6]
[1,]    1    2    3    1    2    3
[2,]    2    3    1    2    3    1
[3,]    3    1    2    3    1    2
[4,]    1    2    3    1    2    3

Z<-c(7,12,19,7,19,21,12,14,17,12,19,21)
table(Z)

7 12 14 17 19 21 
2  3  1  1  3  2 

x1 = c(1,2,3,2,1,3,2,3,1)
x2 = c(20,10,20,30,10,30,20,20,30)
x3 = c(1,2,3,3,2,1,2,1,2)
table(x1,x2)
    x2
x1  10 20 30
1   1  1  1
2   1  1  1
3   0  2  1

tab<-table(x1,x2,x3)
ftable(tab)
