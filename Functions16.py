###16.finding the largest word in the list by the given length.
def longstr(list1,n):
	x=len(list1)
	for i in range(x):
		if(n>=len(list1[i])):
			next
		else:
			y=list1[i]
			print y

			
longstr(['baji','shaida','B.tech','bapatla'],5)

###17.
def is_palendrom(str):
	str1=""
	val=""
	i=len(str)-1
	while(i>=0):
		str1=str1+str[i]
		i=i-1
	return str1

def palendrom(list1):
	x=len(list1)
	str1=""
	for i in range(x):
		z=list1[i]
		for j in range(len(z)):
			if(z[j]==" " or z[j]=="?" or z[j]=="!" or z[j]=="'"):
				continue
			else:
				str1=str1+z[j]
		if(str1.lower()==is_palendrom(str1).lower()):
			print "Palendrom"
		else:
			print "Not Palendrom"

palendrom(["Ra ?da!r"])

###18.
def pengram1(str1):
	list1=map(chr, range(97, 123))
	list2=map(chr, range(65, 91))
	str=""
	count=0
	for i in range(len(str1)):
		for j in range(len(list1)):
			if(str1[i]==list1[j] or str1[i]==list2[j]):
				count=count+1
				if(count==2):
					print "not a pengram"
				else:
					str=str+str1[i]
	return "pengram"

def pengram(str1):
	str=""
	for i in range(len(str1)):
		count=0
		for j in range(len(str1)):
			if(str1[i]==" "):
				continue
			else:
				if(str1[i]==str1[j]):
					count=count+1
					if(count==2):
						break
					else:
						str=str+str1[i]
	if(len(str)==26):
		print "pengram"
	else:
		print "not pengram"

pengram("abc de fghi jklm nopq rstuv wxyz")


