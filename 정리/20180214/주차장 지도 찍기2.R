library(ggplot2)
library(ggmap)

loc<-read.csv('주차장.csv',header=T)
center<-c(mean(loc$LON),mean(loc$LAT))
center
kor<-get_map(center,zoom=11,maptype='roadmap')
kor.map<-ggmap(kor)+geom_point(data=loc,aes(x=LON,y=LAT),size=3,alpha=0.7)
kor.map+geom_text(data=loc,aes(x=LON,y=LAT+0.005,label=주차장명),size=3)
ggsave('park.png',dpi=500)
