f=open('test.txt','r')
print(f.readline())
print(f.tell()) #현재 어디까지 읽었는지 확인해주는 함수 
print(f.readline())
print(f.tell())
