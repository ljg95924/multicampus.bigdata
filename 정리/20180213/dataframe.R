v1<-('봄이 지나면 여름이고 여름이 지나면 가을입니다. 그리고 겨울이죠')
v1
extractNoun(v1)
v2<-('봄이지나 면여름이고 여름이지나면가을 입니다')
extractNoun(v2)
v3<-c('봄이 지나면 여름이고 여름이 지나면 가을입니다', '그리고 겨울이죠')
v3
extractNoun(v3)
v4<-sapply(v3,extractNoun,USE.NAMES = F)
v4
wordcloud(c(letters,LETTERS,0:9),seq(1,1000,len=62),colors = palete)

english<-c(90,80,60,70)
math<-c(50,60,100,20)
df_midterm<-data.frame(english,math)
df_midterm

class<-c(1,1,2,2)
df_midterm<-data.frame(english,math,class)
df_midterm
mean(df_midterm$english)
df_midterm<-data.frame(english=c(90,80,60,70),math=c(50,60,100,20),class=c(1,1,2,2))
df_midterm
no<-c(1,2,3,4)
name<-c('Apple','Peach','Banana','Grape')
price<-c(500,200,100,50)
qty<-c(5,2,4,7)
sales<-data.frame(NO=no,NAME=name,PRICE=price,QTY=qty)
sales
sales2<-matrix(c(1,'Apple',500,5,2,'Peach',200,2,3,'Banana',100,4,4,'Grape',50,7),nrow=4,byrow=T)
sales2
df1<-data.frame(sales2)
df1
names(df1)<-c('NO','NAME','PRICE','QTY')
df1
sales[c(1,2),]
sales[1:2]
sales[1,2]
sales$NAME
sales[,c(1:2)]
subset(sales,qty<5)
subset(sales,price==200)
subset(sales,name=='Apple')

no<-c(1,2,3)
name<-c('apple','banana','peach')
price<-c(100,200,300)
df1<-data.frame(NO=no,NAME=name,PRIcE=price)
df1
no<-c(10,20,30)
name<-c('train','car','airplane')
price<-c(1000,2000,3000)
df2<-data.frame(NO=no,NAME=name,PRICE=price)
df2
df3<-cbind(df1,df2)
df3
df1<-data.frame(name=c('apple','banana','cherry'),price=c(300,200,100))
df2<-data.frame(name=c('apple','cherry','berry'),qty=c(10,20,30))
df1
df2
merge(df1,df2)
merge(df1,df2,all=T)
cbind(df1,df2)
cbind(df2,df1)
new<-data.frame(name='mango',price=400)
df1<-rbind(df1,new)
df1
df1<-rbind(df1,data.frame(name='berry',price=500))
df1
df1<-cbind(df1,data.frame(qty=c(10,20,30,40,50)))
df1

no<-c(1,2,3,4,5)
name<-c('서진수','주시현','최경우','이동근','윤정웅')
address<-c('서울','대전','포항','경주','경기')
tel<-c(1111,2222,3333,4444,5555)
hobby<-c('독서','미술','놀고먹기','먹고놀기','노는애감시하기')
member<-data.frame(NO=no,NAME=name,ADDRESS=address,TEL=tel,HOBBY=hobby)
member

member2<-subset(member,select=c(NO,NAME,TEL))
member2
member3<-subset(member,select = -TEL)
member3
colnames(member3)<-c('번호','이름','주소','취미')

df01<-data.frame(name=c('사과','딸기','수박'),price=c(1800,1500,3000),sales_num=c(24,38,13))
df01
mean(df01$price)
mean(df01$sales_num)

df1<-data.frame(name=c('apple','banana','peach'),price=c(100,200,300))
df1
df2<-data.frame(name=c('train','car','airplane'),price=c(1000,2000,3000))
df2
s<-data.frame(name=c('김길동','강길동','박길동'),kor=c(100,90,85),math=c(90,95,98),eng=c(80,98,100))
s
#열 이름을 모두 출력하시오.
names(s)
#행의 개수를 출력하시오.
nrow(s)
#1,2,열을 출력하시오.
names(s[1:2])
#1,3 열을 출력하시오.
names(s[-2])
#name 열을 출력하시오.
s[1]
#국어 점수가 90점 이상인 행만 출력하시오.
subset(s,kor>90)
#박길동 행을 출력하시오.
subset(s,name=='박길동')
#데이터 [최길동 , 80,90,93]인 행을 추가하시오.
s<-rbind(s,data.frame(name='최길동',kor=80,math=90,eng=93))
s
t<-data.frame(name=c('강길동','박길동','최길동'),kor=c(100,90,92),mat=c(90,95,100))
#데이터 sci,88,80,94인 열을 추가하시오.
t<-cbind(t,data.frame(sci=c(88,80,94)))
t
#열의 개수를 출력하시오.
ncol(t)
#2행만 제외하고 출력하시오.
t[c(-2),]
#1열을 제외하고 출력하시오.
t[,c(-1)]
#1,4,2,3,열 의 순서로 출력하시오

