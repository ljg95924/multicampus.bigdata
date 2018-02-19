var1<-c(1,2,3,4,5)
plot(var1)
var2<-c(2,2,2)
plot(var2)
x<-1:3
y<-3:1
plot(x,y)
plot(x,y,xlim = c(1,10),ylim = c(1,5)) #lim=> x,y축의 최대 범위 지정
plot(x,y,xlim=c(1,10),ylim=c(1,5),xlab='X축 값',ylab='Y축 값',main='Plot Test')
plot.new()#지우기
dev.new()#창 띄우기
v1<-c(100,130,120,160,150)
plot(v1,type='o',col='red',ylim=c(0,200),axes=FALSE,ann=FALSE) #꺽은 선 그래프
axis(1,at=1:5,lab=c('MON','TUE','WED','THU','FRI')) #추가
axis(2,ylim=c(0,200))
title(main='FRUIT',col.main='red',font.main=4)
title(xlab='DAY',col.lab='black')
title(ylab='PRIcE',col.lab='blue')
v1
par(mfrow=c(1,3))
plot(v1,type='o')
plot(v1,type='s')
plot(v1,type='l')

par(mfrow=c(1,3))
pie(v1)
plot(v1,type='o')
barplot(v1)

#그래프 그릴때 여백 조정
a<-c(1,2,3)
plot(a,xlab='aaa')
par(mgp=c(0,1,0))#mgp=c(제목위치,지표값위치,지표선위치)
plot(a,xlab='aaa')
par(mgp=c(3,1,0))
plot(a,xlab='aaa')
par(mgp=c(3,2,1))
plot(a,xlab='aaa')
par(oma=c(2,1,0,0)) #oma 옵션: 그래프 전체의 여백 조정
plot(a,xlab='aaa')
par(oma=c(0,2,0,0))
plot(a,xlab='aaa')

#여러개의 그래프를 중첩으로 그리기
par(mfrow=c(1,1))
v1<-c(1,2,3,4,5)
v2<-c(5,4,3,2,1)
v3<-c(3,4,5,6,7)
plot(v1,type='s',col='red',ylim = c(1,5))
par(new=T)#중복 허락
plot(v2,type='o',col='blue',ylim=c(1,5))
par(new=T)
plot(v3,type='l',col='green')

v1<-c(1,2,3,4,5)
v2<-c(5,4,3,2,1)
v3<-c(3,4,5,6,7)
plot(v1,type='s',col='red',ylim = c(1,10))
lines(v2,type='o',col='blue',ylim=c(1,5))
lines(v3,type='l',col='green',ylim=c(1,15))
#범례 추가하기
legend(4,9,c('v1','v2','v3'),cex=0.9,col=c('red','blue','green'),lty=1)#legend(x축 위치,y축 위치,cex=글자크기,col=색상,pch=크기,lty=선모양)

#1. y축 값이 (3,4,5,6,7)이 되도록 기본 그래프를 그리시오
y<-3:7
plot(y)
#2. y축 값이 (3,3,4,4)가 되도록 기본 그래프를 그리시오
y<-c(3,3,4,4)
plot(y)
#3. x:(3,3,3),y:(2,3,4)가 되도록 그래프를 그리시오
x<-c(3,3,3)
y<-c(2,3,4)
plot(x,y)
#4. x:(10,20,30,40,50,60,70,80,90),y:(10,9,8,7,6,5,4,3,2)가 되도록 그래프를 그리시오
x<-c(10,20,30,40,50,60,70,80,90)
y<-c(10,9,8,7,6,5,4,3,2)
plot(x,y)
#5. x,y 축의 한계값을 조정하여 오른쪽과 같은 그래프를 만드시오.
x<-c(2,4,6,8)
y<-c(16,17,19,18)
plot(x,y,xlim=c(0,10),ylim=c(15,20))

#1. x,y축 제목 서식을 설정하는 mgp=c() 값의 수치를 (2,1,0),(4,2,0),(4,2,1)로 각각 조정하면서 그래프를 그려보시오.
par(mgp=c(2,1,0))
plot(a,xlab='aaa')
par(mgp=c(4,2,0))
plot(a,xlab='aaa')
par(mgp=c(4,2,1))
plot(a,xlab='aaa')
#2. 그래프의 여백 아래쪽을 4로 조정
par(oma=c(0,0,4,0))
plot(a,xlab='aaa')
#3. 그래프의 여백 왼쪽을 4로 조정
par(oma=c(4,0,0,0))
plot(a,xlab='aaa')
#4. 그래프의 여백 위쪽을 4로 조정
par(oma=c(0,0,0,4))
plot(a,xlab='aaa')
#5. 그래프의 여백 오른쪽을 4로 조정
par(oma=c(0,4,0,0))
plot(a,xlab='aaa')

x<-c(1,2,3,4,5)
barplot(x) #기본 bar 그래프
barplot(x,horiz=T)#가로 그래프
x<-matrix(c(5,4,3,2),2,2)
barplot(x,beside = T,names=c(5,3),col=c('green','yellow'))#그룹으로 묶어서 출력
barplot(x,names=c(5,3),col=c('green','yellow'),ylim=c(0,12))#하나의 막대 그래프
par(oma=c(1,0.5,1,0.5))
barplot(x,names=c(5,3),beside=T,col=c('green','yellow'),horiz=T)#그룹으 묶어서 가로로 출력
barplot(x,horiz=T,names=c(5,3),col=c('green','yellow'),xlim=c(0,12))#하나의 막대 그래프에 두개 합쳐서 눕혀서 출력
v1<-c(100,120,140,160,180)
v2<-c(120,130,150,140,170)
v3<-c(140,170,120,110,160)
qty<-data.frame(BANANA=v1,CHERRY=v2,ORANGE=v3)
qty
barplot(as.matrix(qty),main="Fruit's Sales QTY",beside = T,col=rainbow(nrow(qty)),ylim=c(0,400))
legend(14,400,c('MON','TUE','WED','THU','FRI'),cex=0.8,fill = rainbow(nrow(qty)))
barplot(t(qty),main='Fruits Sales QTY',ylim=c(0,900),col=rainbow(length(qty)),space=0.1,cex.axis = 0.8,las=1,names.arg = c('MON','TUE','WED','THU','FRI'),cex=0.8)
legend(0.2,800,names(qty),cex=0.7,fill=rainbow(length(qty)))

peach<-c(180,200,250,198,170)
colors<-c()
for(i in 1:length(peach))
{if(peach[i]>=200)
{colors<-c(colors,'red')}
  else if(peach[i]>=180)
  {colors<-c(colors,'yellow')}
  else
  {colors<-c(colors,'green')}
}
barplot(peach,main='Peach Sales QTY',names.arg = c('MON','TUE','WED','THU','FRI'),col=colors)
height<-c(182,175,167,172,163,178,181,166,159,155)
hist(height,main='histogram of height')

par(mfrow=c(1,2),oma=c(2,2,0.1,0.1))
hist<-c(1,1,2,3,3,3)
hist(hist)
plot(hist,main='Plot')

par(mfrow=c(1,1),oma=c(0.5,0.5,0.1,0.1))
p1<-c(10,20,30,40)
pie(p1,radius = 1) #기본적 pie chart
pie(p1,radius=1,init.angle = 90)#시작각도를 90도로
pie(p1,radius=1,init.angle=90,col=rainbow(length(p1)),label=c('Week1','Week2','Week3','Week4')) #색깔과 label 명 지정
pct<-round(p1/sum(p1)*100,1)
lab<-paste(pct,'%')
pie(p1,radius=1,init.angle=90,col=rainbow(length(p1)),label=lab)
legend(1,1.1,c('Week1','Week2','Week3','Week4'),cex=0.5,fill=rainbow(length(p1)))

pct<-round(p1/sum(p1)*100,1)
lab1<-c('Week1','Week2','Week3','Week4')
lab2<-paste(lab1,'\n',pct,'%')
pie(p1,radius=1,init.angle = 90,col=rainbow(length(p1)),label=lab2)

p1<-c(10,20,30,40,50)
f_day<-round(p1/sum(p1)*100,1)
f_label<-paste(f_day,'%')
pie3D(p1,main='3D Pie Chart',col=rainbow(length(p1)),cex=0.5,labels=f_label,explode=0.05)

v1<-c(10,12,15,11,20)
v2<-c(5,7,15,8,9)
v3<-c(11,20,15,18,13)
boxplot(v1,v2,v3,col=c('blue','yellow','pink'),names=c('Blue','Yellow','Pink'),horizontal=T)
