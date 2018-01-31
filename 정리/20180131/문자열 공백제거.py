str8="   왼쪽끝에 공백"
str9="오른쪽끝에 공백   "
str10="   양쪽끝에 공백   "

print(str8.lstrip())
print(str9.rstrip())
print(str10.strip())

ss="----파---이---썬----"
print(ss.strip('-'))
ss='<<<파<<이>>썬>>>'
print(ss.strip('<>'))

print("\n")

str11="진수쌤 완전 동안임..?"
print(str11.replace("진수쌤","최경우"))

str12="a-a-a-a-a"
print(str12.replace("a","b"))
print(str12.replace("a","b",3))

str12=" a-a-a-a-a"
print(str12)
print(str12.split("-"))
print(str12.split("-",3))
