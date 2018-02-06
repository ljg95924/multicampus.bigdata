import os
print(os)
print(os.getcwd()) #현재 파이썬 작업 중 디렉터리 출력
os.chdir("C:\\temp")#현재 작업 디렉터리 변경
print(os.getcwd())

for name in os.listdir("C:\\python36"):
    #입력한 경로의 파일과 폴더 목록을 리스트로 반환
    print(name)

#os.mkdir("C:\\python36\\test")#폴더 생성
#for name in os.listdir('C:\\python36'):
#    print(name)

#os.makedirs("C:\\temp\\dir1\\dir2\\dir3")
# 하위 폴더 포함 폴더를 만들어 준다.
#print(os.listdir("C:\\temp"))

#print(os.remove("C:\\python36\\test.txt"))
#파일 삭제 , rmdir,removedirs()는 폴더 삭제

print(os.path.isdir("C:\\python36"))
#폴더 유무확인 , exitsts()함수는 파일이나폴더가 존재하는지 확인

print(os.path.getsize("C:\python36\\license.txt"))
#파일의 크기를 반환해
