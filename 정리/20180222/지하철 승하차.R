install.packages('dplyr')
install.packages('ggplot2')
library(dplyr)
library(ggplot2)
exam<-read.csv('지하철승하차1.csv',header=T,sep='\t')
exam
aa<-exam%>%
  group_by(역명)%>%  #역별로 분리
  summarise(total=sum(승하차))%>% # 총승하차 인원을 더함
  arrange(desc(total))%>%#총 승하차인원이 높은순으로 정렬
  head(40)#상위 40개만 
bb<-as.matrix(aa)
bb
dev.new()#창 띄우기
class(bb)
dew.new
plot(bb,type='0',col='red')
barplot(bb)
ggplot(data=aa,aes(x=reorder(역명,total),y=total))+geom_point()+theme(text=element_text(size=12),axis.text.x=element_text(angle=90,hjust=1))
#aa데이터를 쓰며, x축은 역명으로 하되 total로 정렬, y축은 total, 산점도 추가, 텍스트크기 12포인트, x축 텍스트90도 회전 및 정렬

exam%>%
  group_by(역명)%>%
  summarise(mean_total=mean(승하차))
