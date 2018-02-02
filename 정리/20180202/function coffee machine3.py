coffee=0

def coffee_machine(button):
    print()
    print("# 1. 뜨거운 물을 준비한다.")
    print("# 2. 종이컵을 준비한다.")

    if button==1:
        print("# 3. :아메리카노를 탄다")
    elif button==2:
        print("# 3. 카페라떼설탕커피를 탄다")
    elif button==3:
        print("# 3. 카푸치노를 탄다")
    elif button==4:
        print("# 3. 에스프레스를 탄다")
    else:
        print("# 3. 아무거나 탄다!")
    print("# 4. 물을 붓는다")
    print("# 5. 스푼으로 저어서 녹인다.")
    print()

coffee=int(input("철수야 어떤 커피를 드릴까요?(1:아메리카노, 2:카페라떼, 3:카푸치노 4: 에스프레소)"))
coffee_machine(coffee)
print("손님 커피 여기있습니다.")

coffee=int(input("영희야 어떤 커피를 드릴까요?(1:아메리카노, 2:카페라떼, 3:카푸치노 4: 에스프레소)"))
coffee_machine(coffee)
print("손님 커피 여기있습니다.")

coffee=int(input("길동아 어떤 커피를 드릴까요?(1:아메리카노, 2:카페라떼, 3:카푸치노 4: 에스프레소)"))
coffee_machine(coffee)
print("손님 커피 여기있습니다.")

coffee=int(input("민수야 어떤 커피를 드릴까요?(1:아메리카노, 2:카페라떼, 3:카푸치노 4: 에스프레소)"))
coffee_machine(coffee)
print("손님 커피 여기있습니다.")
