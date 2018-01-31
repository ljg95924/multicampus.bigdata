score1=int(input("첫번째 과목의 점수를 입력해주세요."))
score2=int(input("두번째 과목의 점수를 입력해주세요."))
score3=int(input("세번째 과목의 점수를 입력해주세요."))
avg=(score1+score2+score3)/3
if((score1>40 and score2>40 and score3>40) and (avg>=60)):
    print("합격")
else :
    print("불합격")
