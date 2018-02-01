import random

ran1=random.randint(1,6)
ran2=random.randint(1,6)
print(ran1, ran2)
if(ran1>ran2):
    print("첫번째 사람이 이겻습니다.")
elif(ran2>ran1):
    print("두번째 사람이 이겻습니다.")
else:
    print("비겻습니다")
