name=input("이름을 입력해주세요")
number=input("주민번호를입력해주세요.")
if((number[7]) ==1 or number[7]==3) :
    print("%s 는 남자입니다." %name)
elif(int(number[7]) ==2 or number[7]==4):
    print("%s 는 여자입니다." %name)
