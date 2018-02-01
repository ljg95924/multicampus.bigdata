num,total=0,0

while total<1000:
    num+=1
    if(num%2==1):
        total+=num

print("1부터 1000의 홀수의 합에서 최초로 1000이 넘는 위치: %d" %num)
