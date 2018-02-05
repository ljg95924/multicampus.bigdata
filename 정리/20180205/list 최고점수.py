score=[]
for k in range(0,6,1):
    num=int(input("점수를 입력해주세요"))
    score.append(num)

score.sort()
print("최고 점수는 %d 입니다" %(score.pop()))
