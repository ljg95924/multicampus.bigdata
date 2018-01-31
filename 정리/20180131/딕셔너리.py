dic1={1:'a',2:'b',3:'c'}
print(dic1)
print(dic1[1])

student1={'학번':1000, '이름':'홍길동', '학과':'열공학과'}
student1['연락처']='010-1111-2222'
print(student1)

student1['학과']='파이썬학과'
print(student1)

del(student1['연락처'])
print(student1)

print(student1.keys())
print(list(student1.keys()))
print(student1.values())
print(student1.items())
print('이름' in student1)

