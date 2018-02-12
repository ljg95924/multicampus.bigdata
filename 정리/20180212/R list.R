list1<-list(name='James Seo',address='Seoul',tel='010-8706-4712',pay=500)
list1
list1$name
list1[1:2]
list1$birth<-'1975-10-23'
list1
list1$name<-c('Seojinsu','James Seo')
list1$name
list1$birth<-NULL
list1
#76 실습문(4)
#다음과 같은 리스트를  s에 대입하시오. ko = 90, ma = 100, en = 98
s<-list(ko=90,ma=100,en=98)
s
#sc = 100 인 데이터를 s 리스트에 추가하시오.
s$sc<-100
s
#s 리스트의 en 값을 확인하시오.  
s$en
#s 리스트의 2, 3번 리스트 값을 확인하시오.
s[2:3]
#s 리스트의 en 값을 95점으로 변경하시오.
s$en<-95
s
#s 리스트에 저장된 네 과목의 합계를 구해 sum에 저장하시오.
sum<-s$ko+s$ma+s$en+s$sc
sum
#sc 값을 삭제하시오.
s$sc<-NULL
s
