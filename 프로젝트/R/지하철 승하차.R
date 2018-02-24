install.packages('dplyr')
install.packages('ggplot2')
library(dplyr)
library(ggplot2)
exam<-read.csv('지하철승하차1.csv',header=T,sep='\t') 
#지하철승하차1.csv파일을 불러오는데 header는 True(= 맨 앞 컬럼명 을 가져올지 안가져올지),sep(=separate) \t 로 분리해서 불러옴
exam

aa<-exam%>%
  group_by(역명)%>%  #역별로 분리
  summarise(total=sum(승하차))%>% # 총승하차 인원을 더함
  arrange(desc(total))%>%#총 승하차인원이 높은순으로 정렬
  head(40)#상위 40개만
sub('(')
aa_split<-split(aa$역명,"(")

aa_split
data.frame(aa_split)

#bb<-as.matrix(aa)
#bb
#class(bb)
#plot(bb,type='0',col='red')
#barplot(bb)
dev.new()#새창 띄우기(그래프 그려주는 창)

ggplot(data=aa,aes(x=reorder(역명,total),y=total))+geom_point()+theme(text=element_text(size=12),axis.text.x=element_text(angle=90,hjust=1))
#aa데이터를 쓰며, x축은 역명으로 하되 total로 정렬, y축은 total, 산점도 추가, 텍스트크기 12포인트, x축 텍스트90도 회전 및 정렬
ggsave('subway.png',scale = 1,width=7,height=4,dpi=1000)
#이미지 subway.png로 저장 , scale=그림의 크기, 넓이,높이,dpi=해상도 설정 
subway_location<-read.csv('지하철위도경도.csv',header=T)
s_l<-subway_location%>%
  select(역명,X좌표.WGS.,Y좌표.WGS.)

data.frame(aa)
data.frame(s_l)
#final_data<-c('station_name','total_population','LAT','LON')
#f_d<-merge(station_name=aa$역명,total_population=aa$total,LAT=s_l$X좌표.WGS.,LON=s_l$Y좌표.WGS.)

final_data<-aa%>%inner_join(s_l,by='역명') 
#이너조인사용, 상위 40개 지하철역 좌표값 알기위해서

final_data
f_d<-unique(final_data)#중복제거
write.csv(f_d,file='f_d.csv')
#final_data을 csv 파일로 저장

