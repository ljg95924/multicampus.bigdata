exam<-read.csv('csv_exam.csv')
head(exam)#앞에서 6행까지 출력
head(exam,10)
tail(exam)#뒤에서 6행까지 출력
tail(exam,10)
View(exam)#뷰어 창에서 데이터 확인
dim(exam) #행,열 출력
str(exam) #데이터 속성 확인
summary(exam)#요약통계량 출력
mpg<-as.data.frame(ggplot2::mpg) #ggplot2의 mpg데이터를 데이터 프레임형태로 불러오기
head(mpg)
str(mpg)
summary(mpg)
install.packages('dplyr')
library(dplyr)
df_raw<-data.frame(var1=c(1,2,1),var2=c(2,3,2))
df_raw
df_new<-df_raw#복사
df_new
df_new<-rename(df_new,v2=var2)#var2를 v2로 수정
df_new
df<-data.frame(var1=c(4,3,8),var2=c(2,6,1))
df
df$var_sum<-df$var1+df$var2 #var_sum파생변수 생성
df
df$var_mean<-(df$var1+df$var2)/2 
df
mpg$total<-(mpg$cty+mpg$hwy)/2
head(mpg)
mean(mpg$total)
summary(mpg$total)
hist(mpg$total)#히스토리그램생성
mpg$test<-ifelse(mpg$total>=20,'pass','fail')#total이 20이상이면 test가 pass 아니면 fail
head(mpg,20)
table(mpg$test)#(연비 합격) 빈도표 생성
library(ggplot2)
qplot(mpg$test)#(연비 합격빈도)막대그래프 생성
mpg$grade<-ifelse(mpg$total>=30,'A',ifelse(mpg$total>=20,'B','C'))
head(mpg,20) 
table(mpg$grade)
qplot(mpg$grade)
mpg$grade2<-ifelse(mpg$total>=30,'A',ifelse(mpg$total>=25,'B',ifelse(mpg$total>=20,'C','D')))
table(mpg$grade2)
qplot(mpg$grade2)

library(ggplot2)
midwest
#page 28
#ggplot2의 midwest 데이터를 데이터 프레임 형태로 불러와서 데이터의 특성을 파악하시오
df_mid<-data.frame(ggplot2::midwest)
head(df_mid)
#poptotal(전체인구)을 total로, popasian(아시안인)을 asian으 변수명을 수정하세요
df_copy<-df_mid
df_copy<-rename(df_copy,total=poptotal)
df_copy<-rename(df_copy,asian=popasian)
head(df_copy)
#total,asian 변수를 이용해 '전체 인구 대비 아시아 인구 백분율'파생변수를 만들고 히스토리그램을 만들어 도시들이 어떻게분포하는지 살펴보세요
df_copy$var_asian_percent<-df_copy$asian/df_copy$total*100 #파생변수 생성
table(df_copy$var_asian_percent)
hist(df_copy$var_asian_percent)
#아시아 인구 백분율 전체 평균을 구하고 평균을 초과하면 large,그외에는 small 을부여하는 파생변수를 만드세요
avg<-mean(df_copy$var_asian_percent)
avg
df_copy$var_avg<-ifelse(df_copy$var_asian_percent>=avg,'large','small')
head(df_copy)
#large 와 small 에 해당하는 지역이 얼마나 되는지, 빈도표와 막대그래프를 만들어 확인해보세요
table(df_copy$var_avg)
qplot(df_copy$var_avg)


