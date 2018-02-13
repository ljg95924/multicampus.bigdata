list.files()
list.files(recursive = T)#하위디렉토리 내용까지 전부 출력
list.files(all.files=T) #숨김파일까지 전부 출력
#setwd('c:\\r_temp')
scan1<-scan('scan_1.txt') #텍스트 파일 읽어서 배열에 저장
scan1
scan2<-scan('scan_2.txt')
scan2
scan2<-scan('scan_2.txt',what="") #문자나 실수일 경우 what
scan2
scan3<-scan('scan_3.txt',what="")
scan3

fruit2<-read.table(('fruits_2.txt')) #주석,공백 자동 제거
fruit2
fruit2<-read.table('fruits_2.txt',skip=2) #건너 뛸 줄 수를 지정
fruit2
fruits<-read.table('fruits_2.txt',nrows=2)#출력할 수를 지정
fruit2
df_csv_exam<-read.csv('csv_exam.csv')
df_csv_exam
install.packages('readxl')
library(readxl)
fruit3<-read.csv('fruits_3.csv')
fruit3
fruit4<-read.csv('fruits_4.csv')
fruit4
df_csv_exam<-read.csv('csv exam.csv',stringsAsFactors = F)
df_midterm<-data.frame(english=c(90,80,60,70),math=c(50,60,100,20),class=c(1,1,2,2))
df_midterm
write.csv(df_midterm,file='df_midterm.csv')
install.packages('googleVis')
library(googleVis)
install.packages('sqldf')
library(sqldf)
Fruits
df_exam<-read_excel('excel_exam.xlsx')
df_exam
mean(df_exam$english)
mean(df_exam$science)
df_exam_novar<-read_excel('excel_exam_novar.xlsx',col_names=F)
df_exam_novar
df_exam_sheet<-read_excel('excel_exam_sheet.xlsx',sheet=3)
df_exam_sheet

txt1<-read.csv('csv_test.txt')
txt1
txt2<-readLines('csv_test.txt')
txt2
txt3<-read.table('csv_test.txt')
txt3
txt3<-read.table('csv_test.txt',sep=',')
txt3
txt3<-read.table('csv_test.txt',sep=',',header=T) #read.csv와 동일
txt3
