num=int(input("입력하실 구구단의 단을 입력하세요"))

for k in range(1,10,1):
    print("%d * %d = %d" %(num,k,num*k))
j=1
while j<10:
    print("%d * %d= %d" %(num,j,num*j))
    j+=1
