T_shirt=int(input('몇개의 티셔츠를 구매하시겟습니까?'))
Sweater=int(input('몇개의 스웨터를 구매하시겟습니까?'))

T=T_shirt*10000
S=Sweater*30000
total=T+S

if(total>100000):
    print("총금액은 %f 입니다."%(total*0.95))
else:
    print("총 금액은 %f 입니다." %(total*0.85))
