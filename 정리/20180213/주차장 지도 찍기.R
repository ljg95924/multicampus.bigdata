install.packages('ggmap')
install.packages('stringr')
library(ggmap)
library(stringr)
loc<-read.csv('서울_강동구_공영주차장_위경도.csv',header=T)
loc
kd<-get_map('Amsa-dong',zoom=13,maptype='roadmap')
kor.map<-ggmap(kd)+geom_point(data=loc,aes(x=LON,y=LAT),size=3,alpha=0.7,color='red')
kor.map+geom_text(data=loc,aes(x=LON,y=LAT+0.001,label=주차장명),size=3)
ggsave('c:\\easy_r/kd.png',dpi=500)
#get_map():구그에서 지도 불러오기
#get_map("불러올 위치',zoon=확대정도,type)
#ggmap(get_map 으로 불러온 지도 그리기)+geom_point(aes를 통해 위도와 경도좌표찍기)
#aes()안의 데이터는 data항목에 있는 열 이름을 표시
loc2<-str_sub(loc$주차장명,start=-2,end=-2)
loc2

colors<-c()
for(i in 1:length(loc2)){
  if(loc2[i]=='구'){
    colors<-c(colors,'red')
  }
  else{
    colors<-c(colors,'blue')
  }
}
kd<-get_map('Amsa-dong',zoom=13,maptype='roadmap')
kor.map<-ggmap(kd)+geom_point(data=loc,aes(x=LON,y=LAT),size=3,alpha=0.7,color=colors)
kor.map+geom_text(data=loc,aes(x=LON,y=LAT+0.001,label=주차장명),size=3)
