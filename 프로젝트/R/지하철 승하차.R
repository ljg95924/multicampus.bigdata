install.packages('dplyr')
install.packages('ggplot2')
install.packages('ggmap')
library(dplyr)
library(ggplot2)
library(ggmap)

subway_data<-read.csv('subway_population.csv',header=T,stringsAsFactors = F,sep = '\t')
#지하철승하차1.csv파일을 불러오는데 header는 True(= 맨 앞 컬럼명 을 가져올지 안가져올지),sep(=separate) \t 로 분리해서 불러옴
subway_data$total_population <- subway_data$승차총승객수 + subway_data$하차총승객수

subway_data2<-subway_data%>%
  group_by(역명)%>%
  summarise(total=sum(total_population))%>%
  arrange(desc(total))%>%
  head(40)


#subway_data2<-subway_data%>%
#  group_by(역명)%>%  #역별로 분리
#  summarise(total=sum(승하차))%>% # 총승하차 인원을 더함
#  arrange(desc(total))%>%#총 승하차인원이 높은순으로 정렬
#  head(40)#상위 40개만
subway_data2
#subway_data2_split<-split(subway_data2$역명,"(")

#subway_data2_split
#data.frame(subway_data2_split)

#bb<-as.matrix(subway_data2)
#bb
#class(bb)
#plot(bb,type='0',col='red')
#barplot(bb)
dev.new()#새창 띄우기(그래프 그려주는 창)

ggplot(data=subway_data2,aes(x=reorder(역명,total),y=total))+geom_point()+theme(text=element_text(size=12),axis.text.x=element_text(angle=90,hjust=1))
#subway_data2데이터를 쓰며, x축은 역명으로 하되 total로 정렬, y축은 total, 산점도 추가, 텍스트크기 12포인트, x축 텍스트90도 회전 및 정렬
ggsave('subway.png',scale = 1,width=7,height=4,dpi=1000)
#이미지 subway.png로 저장 , scale=그림의 크기, 넓이,높이,dpi=해상도 설정 

subway_location<-read.csv("지하철위도경도.csv",header =T)
s_l<-subway_location%>%
  select(역명,X좌표.WGS.,Y좌표.WGS.)
s_l
#data.frame(subway_data2)
#data.frame(s_l)
#final_data<-c('station_name','total_population','LAT','LON')
#f_d<-merge(station_name=subway_data2$역명,total_population=subway_data2$total,LAT=s_l$X좌표.WGS.,LON=s_l$Y좌표.WGS.)

final_data<-subway_data2%>%inner_join(s_l,by='역명') 
#이너조인사용, 상위 40개 지하철역 좌표값 알기위해서

final_data
f_d<-unique(final_data)#중복제거
f_d
write.csv(f_d,file='f_d.csv')
#final_data을 csv 파일로 저장
loc<-read.csv('f_d.csv',header=T)

kor<-get_map('seoul',zoom=11,maptype = 'roadmap')
kor.map<-ggmap(kor)+geom_point(data=loc,aes(x=loc$Y좌표.WGS.,y=loc$X좌표.WGS.),size=6,alpha=0.7,color='green')
kor.map+geom_text(data=loc,aes(x=loc$Y좌표.WGS.,y = loc$X좌표.WGS.+0.005,label=""),size=3)
