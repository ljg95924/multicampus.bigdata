num1=int(input("첫번째 숫자를 입력해주세요: "))
num2=int(input("두번째 숫자를 입력해주세요: "))
total=0
for k in range(num1+1,num2,1):
    total+=k
print(total)
