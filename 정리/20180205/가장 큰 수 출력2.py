num1=(int(input("첫번째 수를 입력:")))
num2=(int(input("두번째 수를 입력:")))
num3=(int(input("세번째 수를 입력:")))

total=num1+num2+num3

if(total%2==0):
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
else:
    print("세수의 합은 %d" %total)
