library(ggplot2)
ggplot(data=mpg,aes(x=displ,y=hwy))#x축 displ, y축 hwy로 지정해 배경 생성
ggplot(data=mpg,aes(x=displ,y=hwy))+geom_point()#산점도 추가
ggplot(data=mpg,aes(x=displ,y=hwy))+geom_point()+xlim(3,6)#축 범위를 조정하는 설정 추가(x축)
ggplot(data=mpg,aes(x=displ,y=hwy))+geom_point()+xlim(3,6)+ylim(10,30)#축 범위를 조정하는 설정 추가(x축 범위 3~6,y축 범위 10~30)
ggplot(data=mpg,aes(x=displ,y=hwy))+geom_point()+xlim(3,6)+ylim(10,30)#한줄로 작성
#Q1. mpg 데이터의 cty(도시연비)와 hwy(고속도로 연비)간에 어떤 관계가 이는지 알아보려고 합니다. x축은 cty, y 축은 hwy로 된 산점도를 만드세요.
ggplot(data=mpg,aes(x=cty,y=hwy))+geom_point()

library(dplyr)
df_mpg<-mpg%>%
  group_by(drv)%>%
  summarise(mean_hwy=mean(hwy))
df_mpg

ggplot(data=df_mpg,aes(x=drv,y=mean_hwy))+geom_col()
ggplot(data=df_mpg,aes(x=reorder(drv,-mean_hwy),y=mean_hwy))+geom_col() #크기순으로 정렬
ggplot(data=mpg,aes(x=drv))+geom_bar()#x축 범주 변수, y축 빈도
ggplot(data=mpg,aes(x=hwy))+geom_bar()#x축 연속 변수,y축빈도

#Q1. 어떤 회사에서 생산한'suv'차동의 도시 연비가 높은지 알아보려고 합니다.'suv'차종을 대상으로 평균 cty(도시연비)가 가장 높은 회사 다섯곳을 막대 그래프로 표현해보세요. 막대는 연비가 높은 순으로 정렬

ggplot(data=economics,aes(x=date,y=unemploy))+geom_line() #시계열 그래프 만들기
ggplot(data=economics,aes(x=date,y=psavert))+geom_line()
ggplot(data=mpg,aes(x=drv,y=hwy))+geom_boxplot()#상자 그림만들기
#Q1. clss(자동차종류)가 'compact','subcompact','suv'인 자동차의 cty가 어떻게 다른지 비교해보려한다. 세 차동의 cty를 나타낸 상자 그림을 만들어보세요
mpg%>%
  group_by(class)
  filter(class='compact')
  
  