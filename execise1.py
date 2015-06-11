#1.Write a Python program to display the examination schedule. (extract the date from exam_st_date).
exam_st_date = (11,12,2014)
print( "The examination will start from : %i / %i / %i"%exam_st_date)

#2.Write a Python program which accept the radius of a circle from the user and compute the area.
from math import pi
r=int(input("Enter the Radious of the Circle:"))
print("The Radious of The Circle Is:"+str(pi*r**2))

#3. Write a Python program to display the first and last colors from the following list.
color_list = ["Red","Green","White" ,"Black"]
print( "%s %s"%(color_list[0],color_list[-1]))

#4.Write a Python program to accept a filename from the user print the extension of that.
filename = input("Input the Filename: ")
f_extns = filename.split(".")
print ("The  extension of the file is : " + repr(f_extns[-1]))

#5.Write a Python program that accept an integer (n) and computes the value of n+nn+nnn.
a = int(input("Input an integer : "))
n1 = int( "%s" % a )
n2 = int( "%s%s" % (a,a) )
n3 = int( "%s%s%s" % (a,a,a) )
print (n1+n2+n3)

#6.Write a Python program to print the calendar of a given month and year.
import calendar
y = int(input("Input the year : "))
m = int(input("Input the month : "))
print(calendar.month(y, m))

#7.Write a Python program to print the following here document.
print("""
a string that you "don't" have to escape
This
is a  ....... multi-line
heredoc string --------> example
""")

#8.Write a Python program to calculate number of days between two dates.
from datetime import date

f_date = date(2014, 7, 2)
l_date = date(2014, 7, 11)
delta = l_date - f_date
print(delta.days)

#9.Write a Python program to get the the volume of a sphere with radius 6.
pi = 3.1415926535897931
r= 6.0
V= 4.0/3.0*pi* r**3
print('The volume of the sphere is: ',V)
