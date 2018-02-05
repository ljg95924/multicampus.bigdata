try:
    num=int(input("숫자를 입력하세요: "))
    raise ValueError("0보다 작아요","0이예요","0보다 커요")

except ValueError as e:
    if num<0:
        print(e.args[0])
    elif num==0:
        print(e.args[1])
    elif num>0:
        print(e.args[2])
    
