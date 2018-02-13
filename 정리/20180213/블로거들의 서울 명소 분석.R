library(KoNLP)
library(RColorBrewer)
library(wordcloud)
#useSejongDic()
data1=readLines('seoul_go.txt')
#data1
data2<-sapply(data1,extractNoun,USE.NAMES = F) #명사만 추출해서 데이터를 한꺼번에 저장 
#data2
data3<-unlist(data2) 
#data3
data3<-gsub('\\d+','',data3) # \\d 문자를 공백으로
data3<-gsub(' ',"",data3)
#data3
write(unlist(data3),'seoul_go2.txt') #data3의 내용을 seoul_go2 에 저장
data4<-read.table('seoul_go2.txt') # 공백 제거하여 data4에 저장
data4
nrow(data4) #데이터 조회
wordcount<-table(data4)
wordcount
head(sort(wordcount,decreasing = T),20)
palete<-brewer.pal(9,'Set3')
wordcloud(names(wordcount),freq=wordcount,scale=c(5,1),rot.per=0.25,min.freq=1,random.order=F,random.color=T,colors=palete)
