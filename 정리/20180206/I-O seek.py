f=open('test.txt','r')
print(f.readline())
print(f.tell())
print(f.seek(0)) #위치를 찾아주는 함수 
print(f.readline())
print(f.tell())
