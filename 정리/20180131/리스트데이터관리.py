list1=[1,"안녕하시렵니까?",10]
list1.append("안녕하오")
print(list1)
list1.insert(1,"안녕하시죠?")
print(list1)

del list1[1]
print(list1)
list1.remove("안녕하오")
print(list1)

num=[1,3,4,2,5]
num.sort()
print(num)
num.reverse()
print(num)

foods=["짬뽕","탕수육","깐풍기","짜장밥"]
print(foods.index("짬뽕"))

foods=["짬뽕","탕수육",["깐풍기","짜장밥","군만두"]]
print(foods[2])
print(foods[2][0])

aa=[]
for i in range(0,100) :
    aa.append(0)
print(len(aa))
