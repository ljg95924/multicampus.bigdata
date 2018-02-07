import re

r=re.compile("^[가-힣]{2,5}$")
while(True) :
    str=input("이름 입력 (5글자이내)")
    if r.search(str)==None:

        print("잘못입력")
        continue
    else:
        name=str
        print(name)
        break
    
r=re.compile("^[0-9]{9}$")
while(True) :
    str=input("학번 입력 (1990~2017년 까지의 4자리 입학년도 00-99의 학과번호 001-100까지의 학생번)")
    if r.search(str)==None:

        print("잘못입력")
        continue
    else:
        name=str
        print(name)
        break

r=re.compile("^(서울|경기|대전|대구|부산|광주|인천|울산|경북|경남|충북|충남|제주|강원|전북|전남) [가-힣]{5,18}$")
while(True) :
    str=input("서울 경기 대전 대구 부산 광주 인천 울산 경북 경남 충북 충남제주 강원 전북 전남 중하나로 시작")
    if r.search(str)==None:

        print("잘못입력")
        continue
    else:
        name=str
        print(name)
        break

r=re.compile("^[0-9]{6}$")
while(True) :
    str=input("생년월일 입력(6자리)")
    if r.search(str)==None:

        print("잘못입력")
        continue
    else:
        name=str
        print(name)
        break
