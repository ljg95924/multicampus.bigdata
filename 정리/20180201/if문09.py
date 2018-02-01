apple=1000
grape=3000
pear=2000
tangerine=500
apple_num=int(input("몇개의 사과를 사시겟습니까?"))
grape_num=int(input("몇개의 포도를 사시겟습니까?"))
pear_num=int(input("몇개의 배를 사시겟습니까?"))
tangerine_num=int(input("몇개의 귤을 사시겟습니까?"))
total=apple*apple_num + grape+grape_num + pear*pear_num + tangerine*tangerine_num
if(grape_num>=3):
    print("총 가격의 10%% 할인하여 %f 원 입니다" %(total*0.9))
