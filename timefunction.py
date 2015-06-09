Python 2.7.10 (default, May 23 2015, 09:40:32) [MSC v.1500 32 bit (Intel)] on win32
Type "copyright", "credits" or "license()" for more information.

#To translate a time instant from a seconds since the epoch floating-point value into a time-tuple, pass the floating-point value to a function 

>>> import time
>>> ticks=time.time()
>>> print ticks
1433844383.72

>>> localtime=time.localtime(time.time())
>>> print localtime
time.struct_time(tm_year=2015, tm_mon=6, tm_mday=9, tm_hour=15, tm_min=38, tm_sec=16, tm_wday=1, tm_yday=160, tm_isdst=0)

#You can format any time as per your requirement, but simple method to get time in readable format 

>>> localtime=time.asctime(time.localtime(time.time()))
>>> print localtime
Tue Jun 09 15:39:39 2015

#yearly and monthly calendars.

>>> import calendar
>>> cal=calendar.month(2015,6)
>>> print cal
     June 2015
Mo Tu We Th Fr Sa Su
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30

#The offset of the local DST timezone, in seconds west of UTC, if one is defined.

>>> times=time.altzone
>>> print times
-23400

#Accepts a time-tuple and returns a readable 24-character string 

>>> t=time.localtime(time.time())
>>> print time.asctime(t)
Tue Jun 09 15:46:24 2015

#Returns the current CPU time as a floating-point number of seconds

>>> t=time.clock()
>>> print t
2.7936511484e-06

#Accepts an instant expressed in seconds since the epoch and returns a time-tuple t with the UTC time

>>> time.clock()-t
99.65799424228499

#Like asctime(localtime(secs)) and without arguments is like asctime( )

>>> time.ctime()
'Tue Jun 09 15:55:59 2015'

#Accepts an instant expressed in seconds since the epoch and returns a time-tuple t with the local time 

>>> time.gmtime()
time.struct_time(tm_year=2015, tm_mon=6, tm_mday=9, tm_hour=10, tm_min=27, tm_sec=14, tm_wday=1, tm_yday=160, tm_isdst=0)

>>> t=time.gmtime()
>>> time.asctime(t)
'Tue Jun 09 10:29:08 2015'

#Accepts an instant expressed as a time-tuple in local time and returns a floating-point value

>>> time.mktime(t)
1433825948.0

>>> t = (2009, 2, 17, 17, 3, 38, 1, 48, 0)
>>> sec=time.mktime(t)
>>> time.asctime(time.localtime(sec))
'Tue Feb 17 17:03:38 2009'

