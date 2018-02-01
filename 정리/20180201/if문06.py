max_elc=1000
now_elc=int(input("현재 전기차의 전기는 얼마나 있습니까?"))

if(now_elc<max_elc*0.3):
    print("전기차의 전기량이 30% 이하로 있으니 휘발유로 주행해야합니다")
