import os
print(os.path.split("C:\\python36\\NEWS.txt"))
#파일과 폴더의 경로를 구분해주는 함수

join_1=os.path.split("C:\\python36\\news.txt")
print(join_1)
print(os.path.join(join_1[0],join_1[1]))
#파일 이름과 폴더 이름을 합쳐주는 함수

print(os.path.dirname("C:\\python36\\news.txt"))
print(os.path.basename("C:\\python36\\news.txt"))

