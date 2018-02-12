#v1에 1부터 10까지대입후 출력
v1<-c(1:10)
v1
#V1에서 x번째부터 y번째까지의 데이터 출력
v1[1:5]
v1[3:7]
v1[-1:-5]
v1[-3:-7]
#v1의 값 변경
v1[3]<-0
v1[6]<-0
v1
v1[9]<-'0'
v1
#v1의 데이터 타입 확인
class(v1)
#v1을 숫자 타입으로 변경
v1<-as.numeric(v1)
class(v1)
#v1의 맨 앞에 0 을  추가하여 출력
append(v1,0,after=0)
#v1의 11번째에 11을 추가
v1<-append(v1,11,after=10)
#v1의 맨뒤에 14~20을 추가
v1<-append(v1,14:20)
v1
#v1에서 위에서 추가한 11과 14 사이에 12,13을 추가
append(v1,12:13,after=10)
#v2에 100을 대입
v2<-100
v2
#v1과v2를 더하기
v1+v2
#v2 100,200,300을대입
v2<-c(100,200,300)
v2
#v1과v2를 더하기
v1+v2
#v1과v2의 합집합
intersect(v1,v2)
#v1에서 v2의 차집합 출력하기
setdiff(v1,v2)
#v2에서 v1의 교집합 출력하기
setdiff(v2,v1)
#v2의 열 이름 (A, B, C) 지정하기
colnames(v2)<-c('A','B','C')
#v3에 5부터 5의 간격으로 50까지 할당
v3<-seq(5,50,5)
v3
#v4에 5 6 5 6 5 6 을 할당
v4<-rep(5:6,3)
v4
#v5에 -1 -1 -1 0 0 0 1 1 1 을 할당
v5<-rep(-1:1,each=3)
v5
#v5의 길이 출력
length(v5)
#v3에 15가 있는지 검색
15%in%v3
#v3에 55가 있는지 검색하여 결과를 변수 vv에 대입
vv<-55%in%v3
install.packages('KoNLP')
install.packages('wordcloud')
library(KoNLP)
library(wordcloud)
useSejongDic()

buildDictionary(data.frame('서진수','ncn'))
data1<-readLines('seoul_new.txt')
data1
data2<-sapply(data1,extractNoun,USE.NAMES = F)
data2
head(unlist(data2),30)
data3<-unlist(data2)
data3
#gsub('변경전 글자','변경후 글자','원본데이터')
data3<-gsub('\\d+','',data3)
data3<-gsub('서울시','',data3)
data3<-gsub('서울','',data3)
data3<-gsub('요청','',data3)
data3<-gsub("제안","",data3)
data3<-gsub(" ","",data3)
data3<-gsub("-","",data3)
data3
write(unlist(data3),'seoul_2.txt')
data4<-read.table('seoul_2.txt')
data4
nrow(data4)
wordcount<-table(data4)
wordcount
head(sort(wordcount,decreasing=T),20)
data3<-gsub('개선','',data3)
data3<-gsub('문제','',data3)
data3<-gsub('관리','',data3)
data3<-gsub('민원','',data3)
data3<-gsub('이용','',data3)
data3<-gsub('관련','',data3)
data3<-gsub('시장','',data3)
data3
write(unlist(data3),'seoul_3.txt')
data4<-read.table('seoul_3.txt')

head(sort(wordcount,decreasing = T),20)

library(RColorBrewer)
palete<-brewer.pal(9,'Set3')
wordcloud(names(wordcount),freq=wordcount,scale=c(5,1),rot.per=0.25,min.freq = 1,random.order = F,random.color=T,colors=palete)
legend(0,3,1,'서울 응답소 요청사항 분석',cex=0.8,fill=NA,border=NA,bg='white',text.col='red',text.font=2,box.col='red')
