try:
    num=int(input("숫자를 입력하세요: "))
except ValueError:
    print("숫자가 아닙니다")
else:
    print(num)
finally:
    print("finally는 무조건 실행")
