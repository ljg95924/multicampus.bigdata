import random

time=random.randint(0,23)
TF=random.choice([True,False])
print("현재 시간은 %d 시 이고 날씨는 %s"%(time,TF))
if(time>=6 and time<=9 )and (TF==True):
    print("노래한다")
else:
    print("노래하지 않는다")
