df<-data.frame(sex=c('M','F',NA,'M','F'),score=c(5,4,3,4,NA))
df
is.na(df)#NA 확인
table(is.na(df))#빈도 출력
table(is.na(df$sex))
mean(df$score)

library(dplyr)
df%>%filter(is.na(score))#score가 na인 데이터만 출력
df%>%filter(!is.na(score))#결측치 제거

#결측치 제외한 데이터로 분석하기
df_nomiss<-df%>%filter(!is.na(score))
mean(df_nomiss$score)

df_nomiss<-df%>%filter(!is.na(score)&!is.na(sex))
df_nomiss

#결측치가 하나라도 있으면 제거(분석에 필요한 데이터까지 손실 될 가능성 주의)
df_nomiss2<-na.omit(df)
df_nomiss2

#결측치 제외하고 평균 산출
mean(df$score,na.rm=T)

exam<-read.csv('csv_exam.csv')
exam[c(3,8,15),'math']<-NA
exam%>%summarise(mean_math=mean(math))
exam%>%summarise(mean_math=mean(math,na.rm = T)) #결측치 제외 후 산출
#결측치 제외하고 math 평균 산출
mean(exam$math,na.rm=T)
#평균으로 대체하기
exam$math<-ifelse(is.na(exam$math),55,exam$math)#math가 NA면 55로 대체
table(is.na(exam$math))

#결측치가 들어있는 mpg 데이터를 활용해서 문제를 해결해 보세요
mpg<-as.data.frame(ggplot2::mpg)
mpg[c(65,124,131,153,212),'hwy']<-NA
#Q1. drv(구동방식)별로 hwy(고속도로 연비)평균이 어떻게 다른지 알아보려 합니다 분석을 하기 전에 우선 두 변수에 결측치가 있는지확인해야 합니다. drv변수와 hwy 변수에 결측치가 몇 개 있는지 알아보세요.
table(is.na(mpg$drv))
table(is.na(mpg$hwy))
#Q2. FILTER()를 이용해 hwy변수의 결측치를 제외하고 어떤 구동방식의 hwy 평균이 높은지 알아보세요
mpg2<-mpg%>%filter(!is.na(hwy))
mp<-mpg2%>%group_by(drv)
mp
mpg2
mean(mp$hwy)

outlier<-data.frame(sex=c(1,2,1,3,2,1),score=c(5,4,3,4,2,6))
outlier
table(outlier$sex)
table(outlier$score)

outlier$sex<-ifelse(outlier$sex==3,NA,outlier$sex)
outlier
outlier$score<-ifelse(outlier$score>5,NA,outlier$score)
outlier

#결측치 제외하고 분석
outlier%>%
  filter(!is.na(sex)&!is.na(score))%>%
  group_by(sex)%>%
  summarise(mean_score=mean(score))

mpg<-as.data.frame(ggplot2::mpg)
boxplot(mpg$hwy)
boxplot(mpg$hwy)$stats#상자그림 통계치 출력
mpg$hwy<-ifelse(mpg$hwy<12 | mpg$hwy>37, NA, mpg$hwy) #12~37 벗어나면 NA 할당
table(is.na(mpg$hwy))

#결측치 제외하고 분석
mpg%>%
  group_by(drv)%>%
  summarise(mean_hwy=mean(hwy,na.rm = T))
