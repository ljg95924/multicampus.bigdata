height=float(input("높이를 입력하세요: "))
num=0
while height>0.00001:
    height/=2
    num+=1

print("공이 튀긴 횟수는 %d회 입니다." %(num-1))
