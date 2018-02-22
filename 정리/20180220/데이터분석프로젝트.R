install.packages('foreign')
library(foreign)
library(dplyr)
library(ggplot2)
library(readxl)

raw_welfare<-read.spss(file='Koweps_hpc10_2015_beta1.sav',to.data.frame = T)
welfare<-raw_welfare
#데이터 검사
head(welfare)
tail(welfare)
#View(welfare)
#변수명 바꾸기
welfare<-rename(welfare,
                sex=h10_g3,#성별
                birth=h10_g4,#태어난 연도
                marriage=h10_g10,#혼인 상태
                religion=h10_g11,#종교
                income=p1002_8aq1,#월급
                code_job=h10_eco9,#직종 코드
                code_region=h10_reg7)#지역코드
#9.2
class(welfare$sex)
table(welfare$sex)

welfare$sex<-ifelse(welfare$sex==9, NA,welfare$sex)#이상치 결측 처리
table(is.na(welfare$sex))#결측치 확인
welfare$sex<-ifelse(welfare$sex==1,'male','female')#성별 이름 부여
table(welfare$sex)
qplot(welfare$sex)
summary(welfare$income)
qplot(welfare$income)
qplot(welfare$income)+xlim(0,1000)
welfare$income<-ifelse(welfare$income %in% c(0,9999),NA,welfare$income)
table(is.na(welfare$income))

#성별 월급 평균표 만들기
sex_income<-welfare%>%
  filter(!is.na(income))%>%
  group_by(sex)%>%
  summarise(mean_income=mean(income))
sex_income
ggplot(data=sex_income, aes(x=sex,y=mean_income))+geom_col()

#9.3
#나이와 월급의 관계
#변수검토
class(welfare$birth)
summary(welfare$birth)
qplot(welfare$birth)
#전처리
summary(welfare$birth)#이상치 확인
table(is.na(welfare$birth))#결측치 확인
welfare$birth<-ifelse(welfare$birth==9999,NA,welfare$birth)#이상치 결측처리
table(is.na(welfare$birth))
welfare$age<-2018-welfare$birth+1
summary(welfare$age)
qplot(welfare$age)

#나이에 따른 월급 평균표 만들기
age_income<-welfare%>%
  filter(!is.na(income))%>%
  group_by(age)%>%
  summarise(mean_income=mean(income))
head(age_income)
ggplot(data=age_income,aes(x=age, y=mean_income))+geom_line()

#9.4
#파새연수 만들기(연령대)
welfare<-welfare%>%
  mutate(ageg=ifelse(age<30,'young',ifelse(age<=59,'middle','old')))
table(welfare$ageg)
qplot(welfare$ageg)

#연령대별 월급 평균표 만들기
ageg_income<-welfare%>%
  filter(!is.na(income))%>%
  group_by(ageg)%>%
  summarise(mean_income=mean(income))
ageg_income
ggplot(data=ageg_income,aes(x=ageg,y=mean_income))+geom_col()+scale_x_discrete(limits=c('young','middle','old'))

#9.5
#연령대 및 성별 월급 평균표 만들기
sex_income<-welfare%>%
  filter(!is.na(income))%>%
  group_by(ageg,sex)%>%
  summarise(mean_income=mean(income))
sex_income
ggplot(data=sex_income,aes(x=ageg,y=mean_income,fill=sex))+geom_col()+scale_x_discrete(limits=c('young','middle','old'))
ggplot(data=sex_income,aes(x=ageg,y=mean_income,fill=sex))+geom_col(position ='dodge')+scale_x_discrete(limits=c('young','middle','old'))#성별 막대 분리

#나이 및 성별 월급 차이 분석하기
#성별 연령별 월급 평균표 만들
sex_age<-welfare%>%
  filter(!is.na(income))%>%
  group_by(age,sex)%>%
  summarise(mean_income=mean(income))
head(sex_age)
ggplot(data=sex_age,aes(x=age,y=mean_income,col=sex))+geom_line()

#9.6 직업별 월급 차이
#변수 검토
class(welfare$code_job)
table(welfare$code_job)
#전처리, 직업분류코드 목록 불러오기
library(readxl)
list_job<-read_excel('Koweps_Codebook.xlsx',col_names=T,sheet=2)
head(list_job)
dim(list_job)
welfare<-left_join(welfare,list_job,id='code_job')#직업명 결합
welfare%>%
  filter(!is.na(code_job))%>%
  select(code_job,job)%>%
  head(10)

#직업별 월급 평균표 만들기
job_income<-welfare%>%
  filter(!is.na(job)&!is.na(income))%>%
  group_by(job)%>%
  summarise(mean_income=mean(income))
head(job_income)
#상위 10개 추출
top10<-job_income%>%
  arrange(desc(mean_income))%>%
  head(10)
top10

ggplot(data=top10,aes(x=reorder(job,mean_income),y=mean_income))+geom_col()+coord_flip()

bottom10<-job_income%>%
  arrange(mean_income)%>%
  head(10)
bottom10
ggplot(data=bottom10,aes(x=reorder(job,-mean_income),y=mean_income))+geom_col()+coord_flip()+ylim(0,850)

#9.7 성별 직업 빈도
#상위 10개 추출

job_male<-welfare%>%
  filter(!is.na(job)&sex=='male')%>%
  group_by(job)%>%
  summarise(n=n())%>%
  arrange(desc(n))%>%
  head(10)
job_male

job_female<-welfare%>%
  filter(!is.na(job)&sex=='female')%>%
  group_by(job)%>%
  summarise(n=n())%>%
  arrange(desc(n))%>%
  head(10)
job_female

ggplot(data=job_male,aes(x=reorder(job,n),y=n))+geom_col()+coord_flip()
ggplot(data=job_female,aes(x=reorder(job,n),y=n))+geom_col()+coord_flip()

#9.8 종교 유무에 따른 이혼율
class(welfare$religion)
table(welfare$religion)
welfare$religion<-ifelse(welfare$religion==1,'yes','no')
table(welfare$religion)
qplot(welfare$religion)

class(welfare$marriage)
table(welfare$marriage)
#이혼 여부 변수 만들기
welfare$group_marriage<-ifelse(welfare$marriage==1,'marriage',ifelse(welfare$marriage==3,'divorce',NA))
table(welfare$group_marriage)
table(is.na(welfare$group_marriage))
religion_marriage<-welfare%>%
  filter(!is.na(group_marriage))%>%
  group_by(religion,group_marriage)%>%
  summarise(n=n())%>%
  mutate(tot_group=sum(n))%>%
  mutate(pct=round(n/tot_group*100,1))
religion_marriage
divorce<-religion_marriage%>%
  filter(group_marriage=='divorce')%>%
  select(religion,pct)
divorce
ggplot(data=divorce,aes(x=religion,y=pct))+geom_col()

ageg_marriage<-welfare%>%
  filter(!is.na(group_marriage))%>%
  group_by(ageg,group_marriage)%>%
  summarise(n=n())%>%
  mutate(tot_group=sum(n))%>%
  mutate(pct=round(n/tot_group*100,1))
ageg_marriage
ageg_divorce<-ageg_marriage%>%
  filter(ageg!='young'&group_marriage=='divorce')%>%
  select(ageg,pct)
ageg_divorce
ggplot(data=ageg_divorce,aes(x=ageg,y=pct))+geom_col()

ageg_religion_marriage<-welfare%>%
  filter(!is.na(group_marriage)&ageg!='young')%>%
  group_by(ageg,religion,group_marriage)%>%
  summarise(n=n())%>%
  mutate(tot_group=sum(n))%>%
  mutate(pct=round(n/tot_group*100,1))
ageg_religion_marriage
df_divorce<-ageg_religion_marriage%>%
  filter(group_marriage=='divorce')%>%
  select(ageg,religion,pct)
df_divorce
ggplot(data=df_divorce,aes(x=ageg,y=pct,fill=religion))+geom_col(position='dodge')
