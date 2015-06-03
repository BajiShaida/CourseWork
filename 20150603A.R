#The vector consisting of the decreasing sequence of consecutive integers from 57 to -11.
M<-c(57: -11)

[1]  57  56  55  54  53  52  51  50  49  48  47  46  45  44
[15]  43  42  41  40  39  38  37  36  35  34  33  32  31  30
[29]  29  28  27  26  25  24  23  22  21  20  19  18  17  16
[43]  15  14  13  12  11  10   9   8   7   6   5   4   3   2
[57]   1   0  -1  -2  -3  -4  -5  -6  -7  -8  -9 -10 -11

S<- (-1)^(1/2)
[1]NaN

#The vector consisting of the increasing sequence of odd integers from -11 to 57. Hint: See seq
N<-seq(-11,57,2)

[1] -11  -9  -7  -5  -3  -1   1   3   5   7   9  11  13  15
[15]  17  19  21  23  25  27  29  31  33  35  37  39  41  43
[29]  45  47  49  51  53  55  57

#The vector consisting of five hundred alternating zeros and ones. 
K<-rep(0:1,100)

[1] 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0
[30] 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1
[59] 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0
[88] 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1
[117] 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0
[146] 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1
[175] 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1

#The average of 12.7, 9.4, 6.6, 10.8, 5.3, and 7.2.
B<-c(12.7, 9.4, 6.6, 10.8, 5.3, 7.2)
mean(B)

[1] 8.666667

#Sort the six preceding numbers in decreasing order.
sort(B)
[1]  5.3  6.6  7.2  9.4 10.8 12.7

sort(B,decreasing = TRUE)

[1] 12.7 10.8  9.4  7.2  6.6  5.3

#A vector of fifty, uniformly distributed, random values between - 1 and +1.
F<-runif(50,-1,1)

[1] -0.40504822 -0.41401275  0.32280673 -0.20795428
[5]  0.87251392  0.36645680  0.81901364  0.44385049
[9]  0.91796193 -0.48373113 -0.99298248 -0.60513041
[13] -0.89875502  0.43534554  0.68754511 -0.03464446
[17]  0.52003409 -0.40822448  0.73224267  0.24655889
[21] -0.82000321 -0.90492202 -0.36148338 -0.68740578
[25] -0.52338116  0.03393264  0.17391402  0.42276313
[29] -0.47500115  0.02155200 -0.06189742  0.93740496
[33] -0.02907329 -0.16597457  0.06483997 -0.13086808
[37] -0.27113166 -0.59490731 -0.78092025  0.99603113
[41] -0.24405439 -0.09184954 -0.03598529  0.04904694
[45]  0.84799846 -0.94664410 -0.08114896  0.55064051
[49] -0.84473750  0.13135109

#The vector consisting of positive values from the preceding vector.
L<-subset(F,F>0)

[1] 0.44351362 0.32564962 0.09553232 0.91338404 0.64059721
[6] 0.12310071 0.34808726 0.25514991 0.46812346 0.13668066
[11] 0.09385620 0.75243636 0.05244614 0.95830504 0.61712494
[16] 0.91310353 0.12519861 0.17284896 0.63578455 0.61849460
[21] 0.70968586 0.05428562 0.44036090

#The positions of the positive values in the original vector.
> D<-c(F>0)
> D
[1]  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE FALSE FALSE
[10] FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE
[19] FALSE FALSE FALSE  TRUE  TRUE FALSE  TRUE FALSE FALSE
[28]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
[37] FALSE FALSE FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE
[46]  TRUE  TRUE  TRUE FALSE FALSE

H<-matrix(c(F,K),10,50)
J<-function(x)(x^2)


#The vector of the first 100 positive integers, without the perfect squares.
G<-seq(1,100)
V<-G^2
W<-G[-V]

[1]  2  3  5  6  7  8 10 11 12 13 14 15 17 18 19 20 21 22 23
[20] 24 26 27 28 29 30 31 32 33 34 35 37 38 39 40 41 42 43 44
[39] 45 46 47 48 50 51 52 53 54 55 56 57 58 59 60 61 62 63 65
[58] 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 82 83 84 85
[77] 86 87 88 89 90 91 92 93 94 95 96 97 98 99

#Factorial of a Number
n=5
product=1
if(n>1)
{
  for(k in 2:n)
  {
    product=product*k
  }
}

> product
[1] 120

group<-seq(1:20)
for(k in group)
{
  
}