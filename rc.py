import math
days={1:31,  # Jan
      2:29, 3:31, 4:30, 5:31, 6:30, 7:31, 8:31, 9:30, 10:31, 11:30, 12:31}
BDAY=(7,12)
max_res=0
max_res_date=(-1,-1)
for month in range(1,13):
    for day in range(1,days[month]+1):
        num=BDAY[0]*month+BDAY[1]*day
        denom=math.sqrt(BDAY[0]**2+BDAY[1]**2)*math.sqrt(month**2+day**2)
        if denom>0:
            res=math.acos(min(num*1.0/denom,1))
            print "day:",str(month),str(day)," angle:",str(res)
            if res>max_res:
                max_res=res
                max_res_date=(month,day)
print "For ",str(BDAY),"the worst case is",str(max_res),"radians on date",str(max_res_date)
print "  That is ",180*max_res/math.pi,"degrees"
