import reverse
list=[]
for k in range(0,3,1):
    aa=int(input("%d 번째 숫자를 입력해주세요 :" %(k+1)))
    list.append(aa)

print(reverse.revr(list))
