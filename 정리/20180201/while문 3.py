hap=0
num1,num2,num3=0,0,0

num1=int(input("시작값 입력:"))
num2=int(input("끝값  입력:"))
num3=int(input("증가값 입력:"))

while num1<num2:
    hap=hap+num1
    num1+=num3
    
print("%d에서 %d까지의 %d씩 증가함 값의 합:%d" %(num1,num2,num3,hap))
