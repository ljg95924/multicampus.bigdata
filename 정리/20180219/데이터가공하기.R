library(dplyr)
exam<-read.csv('csv_exam.csv')
exam
exam%>%filter(class ==1)
exam%>%filter(class ==2)
exam%>%filter(class !=1)
exam%>%filter(math >50)
exam%>%filter(class==1&math>=50)
exam%>%filter(class==1|class==3|class==5)
exam%>%filter(class %in% c(1,3,5)) #1,3,5반에 해당하면 추출

class1<-exam%>%filter(class==1)
mean(class1$math)


library(ggplot2)
mpg
#Q1. 자동차 배기량에 따라 고속도로 연비가 다른지 알아보려함. 배기량(displ)이 4이하인 자동차와 5이상인 자동차 중 어떤 자동차의 고속도로 연비(hwy)가 평균적으로 더 높은지 알아보자
di1<-mpg%>%filter(displ<=4)
di2<-mpg%>%filter(displ>=5)
mean(di1$hwy)
mean(di2$hwy)
#Q2. 자동차 제조 회사에 따라 도시 연비가 다른지 알아보려함. 'audi'와'toyota'중 어느 manufacturer의 cty가 평균적으로 더 높은지 알아보세요.
ma1<-mpg%>%filter(manufacturer=='audi')
ma2<-mpg%>%filter(manufacturer=='toyota')
mean(ma1$cty)
mean(ma2$cty)
#Q3. 'chevrolet','ford','honda'자동차의 고속도로 연비 평균을 알아보려고 합니다. 이 회사들의 자동차를 추출한 뒤 hwy 전체 평균을 구해보세요
ma3<-mpg%>%filter(manufacturer%in%c('chevrolet','ford','honda'))
mean(ma3$hwy)

exam%>%select(math,class)
exam%>%select(-math)
exam%>%filter(class==1)%>%select(english)

exam%>%select(id,math)%>%head
#Q1. mpg데이터는 11개 변수로 구성되어있습니다. 이 중 일부만 추출해서 분석에 활용하려고 합니다 mpg데이터에서 class(자동차 종류),cty(도시 연비)변수를 추출해 새로운 데이터를 만드세요. 
mpg<-as.data.frame(ggplot2::mpg)
sel<-mpg%>%select(class,cty)
sel
#Q2. 자동차종류에 따라 도시 연비가 다른지 알아보려고 합니다. 앞에서 추출한 데이터를 이용해서 class(자동차 종류)가 'suv'인 자동차와 'compact'인 자동차 중 어떤 자동차의 cty가 더 높은지 알아보세요.
fil1<-sel%>%filter(class=='suv')
fil2<-sel%>%filter(class=='compact')
mean(fil1$cty)
mean(fil2$cty)

exam%>%arrange(class,math)
exam%>%arrange(desc(math))

#audi에서 생산한 자동차중 hwy가 1~5위에 해당하는 자동차의 데이터를 출력하세요.
mpg%>%filter(manufacturer=='audi')%>%arrange(desc(hwy))%>%head(5)

test1<-data.frame(id=c(1,2,3,4,5),midterm=c(60,80,70,90,85))
exam%>%mutate(total=math+english+science)%>%head
exam%>%mutate(total=math+english+science,mean=(math+english+science)/3)%>%head
exam%>%mutate(test=ifelse(science>=60,'pass','fail'))%>%head
exam%>%mutate(total=math+english+science)%>%arrange(total)%>%head

#Q1. mpg 데이터 복사본을 만들고 cty와 hwy를더한 '합산연비변수'를 추가하세요
mpg_copy<-mpg
mpg_copy%>%mutate(y_total=cty+hwy)
#Q2. 앞에서 만든 합산 연비 변수를 2로 나눠 평균 연비 변수를 추가
mpg_copy%>%mutate(y_total=cty+hwy,y_avg=y_total/2)
#Q3. 평균 연비 변수가 가장 높은 자동차3조의 데이터를 출력하세요
mpg_copy%>%mutate(y_total=cty+hwy,y_avg=y_total/2)%>%arrange(desc(y_avg))%>%head(3)

exam%>%summarise(mean_math=mean(math)) #평균 산출
exam%>%group_by(class)%>%summarise(mean_math=mean(math))#class별로 분리후 평균 산출

exam%>%group_by(class)%>%summarise(mean_math=mean(math),sum_math=sum(math),median_math=median(math),n=n())#여러 요약 통계량 한번에 산출

mpg%>%group_by(manufacturer,drv)%>%#회사별,구방방식별 분리
  summarise(mean_cty=mean(cty))%>%#cty 평균 산출
  head(10)

mpg%>%group_by(manufacturer)%>%#회사별 분리
  filter(class='suv')%>%#suv추출
  mutate(tot=(cty+hwy)/2)%>%#통합 연비 변수 생성
  summarise(mean_tot=mean(tot))%>%#통합 연비 평균 산출
  arrange(desc(mean_tot))%>%#내림차순 정렬
  head(5)

#Q1. mpg 데이터의 class 는 'suv','compact'등 자동차를 특징에 따라 일곱 종류로 분류한 변수 입니다. 어떤 차종의 연비가 높은지 비교해보려고 합니다. class별 cty평균을구해보세요
mpg%>%group_by(class)%>%
  summarise(cty_avg=mean(cty))
#Q2. 앞 문제의 출력 결과는 class 값 알파벳 순서로 정렬되어 있습니다. 어떤 차종의 도시 연비가 높은지 쉽게 알아볼 수 있도록 cty 평균이 높은 순으로 정렬해주세요.
mpg%>%group_by(class)%>%
  summarise(cty_avg=mean(cty))%>%
  arrange(desc(cty_avg))
#Q3. 어떤 회사 자동차의 hwy가 가장 높은지 알아보려고 합니다. hwy 평균이 가장 높은 회사 세곳을 출력하세요.
mpg%>%group_by(manufacturer)%>%
  arrange(desc(hwy))%>%
  head(3)

test1<-data.frame(id=c(1,2,3,4,5),midterm=c(60,80,70,90,85))
test2<-data.frame(id=c(1,2,3,4,5),final=c(70,83,65,95,80))
total<-left_join(test1,test2,by='id')
total
name<-data.frame(class=c(1,2,3,4,5),teacher=c('kim','lee','park','choi','jung'))
name
exam_new<-left_join(exam,name,by='class')#가로로 합치기
exam_new
group_a<-data.frame(id=c(1,2,3,4,5),test=c(60,80,70,90,85))
group_b<-data.frame(id=c(6,7,8,9,10),test=c(70,83,65,95,80))
group_all<-bind_rows(group_a,group_b)#세로로 합치기
group_all

fuel<-data.frame(f1=c('c','d','e','p','r'),price_fl=c(2.35,2.38,2.11,2.76,2.22),stringsAsFactors = F)
fuel
