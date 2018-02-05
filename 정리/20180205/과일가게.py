fruits={'사과':1000,'포도':3000 ,'배' :2000,'귤':500}
fruits_price={'사과':0,'포도':0,'배':0,'귤':0}
gul,count=0,0
total,dis=0,0
name=(input("구입하려는 과일의 이름을 입력하세요.(입력을 종료하려면 q를 입력)"))
while name!='q':
    if(name in fruits):
        num=int(input("개수를 입력해주세요"))
        fruits_price[name]=fruits.get(name)*num
    else:
        print("잘못 입력하셧습니다. 다시입력해주세요")
    name=(input("구입하려는 과일의 이름을 입력하세요.(입력을 종료하려면 q를 입력)"))
for k,v in fruits_price.items():
    
    if(k=='포도' and (v/fruits.get(k))>=3):
        dis=1
    if(k=='귤' and(v/fruits.get(k))>=10):
        gul=v/fruits.get(k)
        while gul>=10:
            gul-=10
            count=count+2
        print("귀하는 %s  %d 개  %d 원" %(k,((v/fruits.get(k))+count),v))
    else:
        print("귀하는 %s  %d 개  %d 원" %(k,v/fruits.get(k),v))
    total+=v
if(dis==1):
    total=total*0.9
    
print("총 금액은 %d 입니다" %total)
