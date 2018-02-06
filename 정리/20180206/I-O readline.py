f= open('test.txt','r') #r=읽기
#print(f.readline()) #한줄씩 읽기
#print(f.readlines())#한꺼번에 여러줄 읽기

foods=f.readlines()
for food in foods:
    print(food)
    

