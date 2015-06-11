#1.Function for Finding the Max Number.

def max(m1,m2):
	if(m1>m2):
		print "The Largest Number in %d,%d is:"%(m1,m2),m1
	else:
		print "The largest Number in %d,%d is:"%(m1,m2),m2
max(20,30)

#2.Writing Function for the Max of Three Numbers.

def max_of_three(m1,m2,m3):
	if(m1>m2 and m1>m3):
		print "the largest number in %d,%d,%d is:"%(m1,m2,m3),m1
	elif(m2>m1 and m2>m3):
		print "the largest number in %d,%d,%d is:"%(m1,m2,m3),m2
	else:
		print "the largest number in %d,%d,%d is:"%(m1,m2,m3),m3

max_of_three(50,60,39)

#3.Writing the Function for the finding the Length of a String.

def length(str):
	length=len(str)
	print "the length the string is:",length

length("baji Shaida")

#4.Write a function that takes a character and returns True if it is a vowel, False otherwise.

def vowel(str):
	x=len(str)
	for i in range(1,x):
		if(str[i]=='a' or str[i]=='A' ):
			print "vowel"
		elif(str[i]=='e' or str[i]=='E'):
			print "vowel"
		elif(str[i]=='i' or str[i]=='I'):
			print "vowel"
		elif(str[i]=='o' or str[i]=='O'):
			print "vowel"
		elif(str[i]=='u' or str[i]=='U'):
			print "vowel"
		else:
			print "Consonent"

			
vowel("BAjI ShaiDa")

