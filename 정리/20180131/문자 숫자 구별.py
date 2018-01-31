text=input("입력해주세요")
if(text.isdigit()):
    print("입력하신 텍스트는 숫자입니다.")
elif(text.isalpha()):
    print("입력하신 텍스트는 문자입니다.")
elif(text.isalnum()):
    print("입력하신 텍스트는 문자와숫자가 섞여있습니다.")
else:
    print("모르겟습니다.")
