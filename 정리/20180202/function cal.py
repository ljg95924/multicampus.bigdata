import sys
def calc(v1,v2,op):
    result=0
    if op=='+':
        result=v1+v2
    elif op=='-':
        result=v1-v2
    elif op=='*':
        result=v1*v2
    elif op=='/':
        if v2==0:
            print("0으로 나눌 수 없 습 니다 ")
            sys.exit(1)
        result=v1/v2
    elif  op=='**':
        result=v1**v2
    return result

res=0
var1,var2,oper=0,0,""

var1=int(input("첫 번째 숫자 입력: "))
oper=input("계산입력(+, -, *, /, **): ")
var2=int(input("두 번쨰 숫자 입력: "))

res=calc(var1,var2,oper)

print("##계산기 : %d %s %d = %d " %(var1,oper,var2,res))
