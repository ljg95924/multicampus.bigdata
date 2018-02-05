num1=int(input("첫번째 수를 입력해주세요"))
num2=int(input("두번째 수를 입력해주세요"))
num3=int(input("세번째 수를 입력해주세요"))

if(num1>num2):
    if(num1>num3):
        print("가장 큰 수는  %d" %num1)
    else:
        print("가장 큰 수는 %d" %num3)
else:
    if(num2>num3):
        print("가장 큰 수는 %d" %num2)
    else:
        print("가장 큰 수는 %d" %num3)
