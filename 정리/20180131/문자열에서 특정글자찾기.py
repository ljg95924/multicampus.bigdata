str7="아기다리 고기다리 던 방학이닷~!"
print(str7.count("기"))
print(str7.count("기",0))
print(str7.count("기",5))

print(str7.index("기"))
print(str7.index("기",5))

ss=input("문자열 입력->")
print("출력 문자열==>",end='')

if ss.startswith('(')==False :
    print("(", end='')
print(ss,end='')

if ss.endswith(')')==False :
    print(")",end='')

print("\n")

if ss.startswith('(')==False :
    print("---", end='')
print(ss,end='')

if ss.endswith(')')==False :
    print("---",end='')
