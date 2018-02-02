n=int(input("정수를입력해주세요"))
fact=1
for k in range(1,n+1,1):
    fact*=k
print(n,'!=',fact)
