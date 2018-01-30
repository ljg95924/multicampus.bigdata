money=7777
nextmoney=0
sss=0
r=0
sss=money//500
r=money-(500*sss)
print("500원짜리는 %s" %sss )
sss=r//100
r=r-(100*sss)
print("100원짜리는 %s" %sss )
sss=r//50
r=r-(50*sss)
print("50원짜리는 %s" %sss )
sss=r//10
r=r-(10*sss)
print("10원짜리는 %s" %sss )
sss=r//1
r=r-(1*sss)
print("나머지는 %s" %sss)
