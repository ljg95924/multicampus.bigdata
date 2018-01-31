type=int(input("진수(2/8/10/16)를 선택하시오"))
num1=int(input("첫번째 수를입력하세요"))
num2=int(input("두번째 수를입력하세요"))
temp=0
if(type==2):
    num1=int(num1,2)
    num2=int(num2,2)
elif(type==8):
    num1=int(num1,8)
    num2=int(num2,8)
elif(type==10):
    num1=int(num1)
elif(type==16):
    num1=int(num1,16)
    num2=int(num2,16)
else:
    print("진수를 잘못입력하셧습니다.")

temp=num1&num2
print("두수의 &연산 결과")
print("16진수=>%s" %hex(temp))
print("10진수=>%s" %(temp))
print("8진수=>%s" %oct(temp))
print("2진수=>%s" %bin(temp))
