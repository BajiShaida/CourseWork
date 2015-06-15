
###5.Robbers language.Ex:("this is fun" ->"tothohisos isos fofunon") 
def consonent(str):
	x=len(str)
	str1=""
	for i in range(0,x):
		if(str[i]=='a' or str[i]=='A' ):
			str1=str1+str[i]
			##print str1
		elif(str[i]=='e' or str[i]=='E'):
			str1=str1+str[i]
			##print str1
		elif(str[i]=='i' or str[i]=='I'):
			str1=str1+str[i]
			##print str1
		elif(str[i]=='o' or str[i]=='O'):
			str1=str1+str[i]
			##print str1
		elif(str[i]=='u' or str[i]=='U'):
			str1=str1+str[i]
			##print str1
		elif(str[i]==' '):
                        str1=str1+' '
		else:
			str1=str1+str[i]+'O'+str[i]

        print str1

vowel("this is fun")

###6.sum and Multiplication of a list.
def sumMul(list):
	print 'Enter the list'
	add=0
	mul=1
	for i in range(len(list)):
		add=add+list[i]
		mul=mul*list[i]

	print 'sum of list is:',add
	print 'multiplication of list is:',mul
	
sumMul([1,2,3,4])


###7.revers of a string.
def revers(str):
	str1=""
	i=len(str)-1
	while(i>=0):
		str1=str1+str[i]
		i=i-1
	print str1
        
revers("I am Testing")

###8.create a function that can be palendrom or not
def is_palendrom(str):
	str1=""
	i=len(str)-1
	while(i>=0):
		str1=str1+str[i]
		i=i-1

	if(str==str1):
            print 'Palendrom'
        else:
            print 'Not A Palendrom'
	    
is_palendrom("radar")
   
###9.Create a function that can be retur the membre is present or not.
def is_member(x):
	list=[2,5,'num',6,'a','b']
	for i in range(len(list)):
		if(x==list[i]):
			print "is a Member:"
			break
		else:
			print "is not a Member:"

is_member(5)

###10.Create a Function that returns the matching members of two lists.
def overlaping(list1,list2):
    x=len(list1)
    y=len(list2)
    for i in range(x):
        for j in range(y):
            if(list1[i]==list2[j]):
                print list1[i]
            
overlaping([1,2,3,4,5],[1,3,5,7,8,9])

###11.Create a function which can be print the charecter in given no of times.
def generate_n_chars(no,char):
	print no*char

generate_n_chars(7,'d')

###12.Create a function histogram that can print the pattern. 
def histogram(list):
	x=len(list)
	for i in range(x):
		print list[i]*'*'
		
histogram([4,6,9])

###13.Create a function that finds the Maximum Number in List.
def max(list):
	x=len(list)
	m=list[0]
	for i in range(x):
		if(m>=list[i]):
			next
		else:
			m=list[i]
	print m

max([90,50,40,150])

###14.Write function maps a list of words into a list of integers representing the lengths of the correponding words.
  def maping(list1,list2):
    x=len(list1)
    y=len(list2)
    for i in range(x):
        for j in range(y):
            if(len(list1[i])==list2[j]):
                print (list1[i],list2[j])

maping(['baji','shaida','ram'],[3,6,4])

###15.Write a function find_longest_word() that takes a list of words and returns the length of the longest one
def find_longest_word(char_list):
	x=len(char_list)
	m=len(char_list[0])
	for i in range(x):
		if(m>=len(char_list[i])):
			next
		else:
			m=len(char_list[i])
			y=char_list[i]
	print (y,m)


find_longest_word(['baji','shaida','ganapavaram','raju Palem'])


