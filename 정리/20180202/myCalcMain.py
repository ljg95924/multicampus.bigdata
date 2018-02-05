from myCalc import *

in1=float(input("첫 번 째 숫자를 입력: "))
op=input("연산자(+,-,*,/)를 입력: ")
in2=float(input("두 번 째 숫자를 입력: "))

print()
print(" 호출한 계산기")
if op=='+' :
    print("%5.1f+%5.1f=%5.1f" %(in1,in2,plus(in1,in2)))
elif op=='-' :
    print("%5.1f-%5.1f=%5.1f" %(in1,in2,minus(in1,in2)))
elif op=='*' :
    print("%5.1f*%5.1f=%5.1f" %(in1,in2,multiply(in1,in2)))
elif op=='/' :
    print("%5.1f/%5.1f=%5.1f" %(in1,in2,divide(in1,in2)))
else:
    print("뭔소리야")
