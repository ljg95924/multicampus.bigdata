length1=int(input("가장 긴 변을 입력해주세요: "))
length2=int(input("다른 한 변을 입력해주세요: "))
length3=int(input("마지막 변을 입력해주세요: "))

if(length1<(length2+length3)):
    if(length1==length2) and (lenght1==length3):
        print("정삼각형입니다")
    elif(length1==length2)or(length1==length3)or(length2==length3):
        print("이등변 삼각형 입니다")
    elif(length1*length1)==((length2*length2)+(length3*length3)):
        print("직각 삼각형 입니다")
    else:
        print("일반삼각형 입니다")
    
else:
    print("삼각형이 아닙니다:")
