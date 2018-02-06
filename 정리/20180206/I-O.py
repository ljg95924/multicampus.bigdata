f=open('test.txt','w') #w=쓰기모드 , 기존에 파일이 있으면 덮어쓴다.
print(f.write('텍스트 파일 만들기')) #입력한 글자수 출력
f.close() #파일 닫기

f=open('test.txt','a') # a=쓰기모드 , 기존파일이 있으면 이어쓴다.
f.write('텍스트 파일만들기 추가하기')
f.close()
