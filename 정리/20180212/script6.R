mat1<-matrix(c(1,2,3,4)) #열 생성
mat1
mat2<-matrix(c(1,2,3,4),nrow=2)
mat2
mat3<-matrix(c(1,2,3,4),nrow=2,byrow=T)
mat3
mat3[,1]
mat3[1,]
mat3[1,1]
mat4<-matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,byrow=T)
mat4
mat4<-rbind(mat4,c(11,12,13))
mat4
mat5<-matrix(c('a','b','c','d'),nrow=2,byrow=T)
mat5
mat5<-cbind(mat5,c('e','f'))
mat5
colnames(mat5)<-c('First','Second','Third')
mat5

season<-matrix(c('봄','여름','가을','겨울'),nrow=2)
season
season<-matrix(c('봄','여름','가을','겨울'),nrow=2,byrow=T)
season
season[,2]
season_2<-rbind(season,c('초봄','초가을'))
season_2
season_3<-cbind(season_2,c('초여름','초겨울','한겨울'))
season_3
#66
#다음과 같은 행렬을 m에 대입하시오.
#1 	5
#2	6	
#3	7
#4	8
m<-matrix(c(1,2,3,4,5,6,7,8),nrow=4)
m
#m의 1열을 출력하시오. 
m[,1]
#m의 2행을 출력하시오.
m[2,]
#행렬 m의 컬럼의 이름을 A, B로 설정해주세요.
colnames(m)<-c('A','B')
m
#m에 마지막 열 (9, 10, 11, 12)을 추가하여 mm 행렬을 만들고 mm을 확인하시오.
mm<-cbind(m,c(9,10,11,12))
mm
#67
#다음 행렬을 n에 대입하시오.
#1 	2 3	4
#5	6	7	8
n<-matrix(c(1,2,3,4,5,6,7,8),nrow=2,byrow = T)
n
#n의 1행을 출력하시오.  
n[1,]
#n의 4열을 출력하시오
n[,4]
#n에 마지막 행(9, 10, 11, 12)를 추가하여 nn 행렬을 만들고 확인하시오.
nn<-rbind(n,c(9,10,11,12))
nn
#행렬 n의 컬럼의 이름을 A, B, C, D로 설정해주세요.
colnames(n)<-c('A','B','C','D')
n
#다음 행렬을 출력하시오.
#J  A  V  A
#C  A  F  E
str=matrix(c('J','A','V','A','C','A','F','E'),nrow=2,byrow=T)
str
