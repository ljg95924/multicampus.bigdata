library(googleVis)
Fruits
#aggregate(계산될 컬럼~기준될 컬럼,데이터,함수)
aggregate(Sales~Year,Fruits,sum)
aggregate(Sales~Fruit,Fruits,sum)
aggregate(Sales~Fruit,Fruits,max)
aggregate(Sales~Fruit,Fruits,max)
mat1<-matrix(c(1,2,3,4,5,6),nrow=2,byrow=T)
mat1
apply(mat1,1,sum)
apply(mat1[,c(2,3)],2,max) #2열과3열의 최대값구하기
list1<-list(Fruits$Sales)
list1
list2<-list(Fruits$Profit) #Fruits의 Profit값만 가져와서 list2 변수에 저장
list2
lapply(c(list1,list2),max)#list1과list2에서 max값을 구해서 list형태로 출력
sapply(c(list1,list2),max)#한줄로 출력
lapply(Fruits[,c(4,5)],max)
sapply(Fruits[,c(4,5)],max)

attach(Fruits)
tapply(Sales,Fruit,sum)#과일 이름(Fruit)별로 합계(sum) 판매량(Sales) 구하기
tapply(Sales,Year,sum)#년도별로 합계 판매량 구하기
vec1<-c(1,2,3,4,5)
vec2<-c(10,20,30,40,50)
vec3<-c(100,200,300,400,500)
mapply(sum,vec1,vec2,vec3)#vec1,2,3 각 요소마다 연산

data1<-read.csv('data1.csv',header=T)
data1
attach(data1)
tapply(X2000년,data1,sum)
sapply(data1[,c(2:15)],sum)
apply(data1[c(1:5),c(2:15)],1,sum)

a<-c(1,1,1)
sweep(mat1,2,a)#mat1의 각 행을 a의 요소값을 뺀 나머지 출력
length(Fruits)
ggplot2::geom_bar()#기존에 만들어져 있는 함수코드확인
sort1<-Fruits$Sales
sort1
sort(sort1)
sort(sort1,decreasing = T)
install.packages('plyr')
library(plyr)
fruits<-read.csv('fruits_10.csv',header=T)
fruits
ddply(fruits,'name',summarise,sum_qty=sum(qty),sum_price=sum(price))
#xyply()-> 입력받을데이터유형(x)을 출력할 데이터 유형(y)으로
ddply(fruits,'name',summarise,max_qty=max(qty),min_price=min(price))
ddply(fruits,c('year','name'),summarise,max_qty=max(qty),min_price=min(price))
ddply(fruits,'name',transform,sum_qty=sum(qty),pct_qty=(100*qty)/sum(qty))

install.packages('dplyr')
library(dplyr) #filter,select,arrange,mutate,summarise
#filter:조건을 주어서 필터링한다
#select:여러 컬럼이 있는 데이터셋에서 특정 컬럼만 선택해서 사용
#arrange: 데이터를 오름차순이나 내림차순으로 정렬
#mutate: 기존의 변수를 활용하여 새로운 변수를 생성
#summarise: 주어진 데이터를 집계
data1<-read.csv('2013년_프로야구선수_성적.csv')
data1
data2<-filter(data1,경기>120)
data2
data3<-filter(data1,경기>120&득점>80)
data3
data4<-filter(data1,포지션 %in% c('1루수','3루수'))
data4
select(data1,선수명,포지션,팀)
select(data1,순위:타수)#순위~타수 컬럼까지 출력
select(data1,-홈런,-타점,-도루) #-컬럼빼고 출력
data1%>%select(선수명,팀,경기,타수)%>%filter(타수>400)%>%arrange(타수)
data1%>%select(선수명,팀,경기,타수)%>%mutate(경기x타수=경기*타수)%>%arrange(경기x타수) #mutate 데이터를 가공해서 새로운 컬럼을 추가
data1%>%group_by(팀)%>%summarise(avarage=mean(경기,na.rm=TRUE))
data1%>%group_by(팀)%>%summarise_each(funs(mean),경기,타수)
data1%>%group_by(팀)%>%summarise_each(funs(mean,n()),경기,타수)
#page37
#Fruits데이터 셋에서 Expenses 값이 80보다 큰 값을 출력
library(googleVis)
fru1<-filter(Fruits,Expenses>80)
fru1
#Expenses 값이 90보다 크고 Sales값도 90보다 큰 값을 출력
fru2<-filter(Fruits,Expenses>90&Sales>90)
fru2
#Expenses 값이 90보다 크거나 또는 Sales 값이 80보다 큰 값을 출력
fru3<-filter(Fruits,Expenses>90|Sales>80)
fru3
#Expenses 가 79와 91인 값만 출력
fru4<-filter(Fruits,Expenses==79|Expenses==91)
fru4
#Fruits에서 라벨명이 Fruit부터 Sales 까지 출력하되 Location은 제외하고 출력
fru5<-select(Fruits,Fruit:Sales,-Location)
fru5
#과일 이름별로 모아서 판매량의 합계를 구해라
Fruits%>%group_by(Fruit)%>%summarise(sum=sum(Sales,na.rm=TRUE))
#과일 이름별로 모아서 판매량과 이익의 합계를 구하세요.
Fruits%>%group_by(Fruit)%>%summarise(sum=sum(Sales,na.rm=TRUE),sum(Profit,na.rm=TRUE))

install.packages('reshape2')#옆으로 컬럼이 많은 형태(wide)를 세로로 긴(long) 형태로 변경해주고 반대로도 해주는 패키지
library('reshape2')
fruits
melt(fruits,id='year')#wide->long 형태로 변환
melt(fruits,id=c('year','name')) #year하고 name을 중심으로
melt(fruits,id=c('year','name'),variable.name = 'var_name',value.name = 'val_name') #출력할 컬럼의 이름을 지정
mtest<-melt(fruits,id=c('year','name'),variable.name = 'var_name',value.name = 'val_name')#cast함수: long-> wide 형태로 변환
dcast(mtest,year+name~var_name)
mtest

library(stringr)
fruits<-c('apple','Apple','banana','pineapple')
str_detect(fruits,'A')#대문자 A가 있는 단어 찾기
str_detect(fruits,'^a')#첫글자가 a로 시작하는 단어찾기
str_detect(fruits,'e$')#끝나는 글자가 e인 단어 찾기
str_detect(fruits,'^[aA]') #시작글자가 a or A 인 단어 찾기
str_detect(fruits,'[aA]')#단어에 a or A 가 포함되는 단어 찾기

str_detect(fruits,ignore.case('a'))#대소문자 무시하기
str_count(fruits,ignore.case('a'))#대소문자a무시하고 그 갯수 카운팅
str_c(fruits,collapse = "")#단어 합치기
str_dup(fruits,3)#반복 출력
str_length(fruits)#문자열 길이 출력

str_locate('apple','a')#특정 문자의 위치 값 찾기
str_locate(fruits,'a')

str_replace('apple','p','*')#특정 문자 대체

fruits<-str_c('apple','/','orange','/','banana')
fruits
str_split(fruits,'/')#기호를 기준으로 분리
str_sub(fruits,start=1,end=3)
str_sub(fruits,start=6,end=9)
str_sub(fruits,start=-5)

install.packages('sqldf')
library(sqldf)
library(googleVis)
Fruits
