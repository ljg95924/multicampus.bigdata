number=(input("16진수 숫자를  입력해주세요."))
if len(number)==1 and ((ord(number)>=65 and ord(number)<=70) or (int(number)>=0 and int(number)<=9)):
    print(int(number,16))
else:
    print("안됩니다")
