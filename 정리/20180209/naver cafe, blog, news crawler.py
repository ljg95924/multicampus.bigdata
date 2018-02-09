import urllib.request
import urllib.parse
from bs4 import BeautifulSoup
import sys
input_Type=int(input("검색 분류를 선택하세요. 1-뉴스, 2-블로그, 3-카페"))
temp=''
if(input_Type==1):
    defaultURL='https://openapi.naver.com/v1/search/news.xml?'
    temp='뉴스'
elif(input_Type==2):
    defaultURL='https://openapi.naver.com/v1/search/blog.xml?'
    temp='블로그'
elif(input_Type==3):
    defaultURL='https://openapi.naver.com/v1/search/cafearticle.xml?'
    temp='카페'
else:
    print("잘못 입력 하셧습니다.")
    sys.exit()
#key='key=_M6QMrUwSzIQrzLnWOMj'
#target='&target=news'
sort='&sort=sim'
start='&start=1'
display='&display=100'
query='&query='+urllib.parse.quote_plus(str(input("검색어를 입력하세요:")))

fullURL=defaultURL + sort + start + display + query

print(fullURL)
file_Name=input("파일명을 입력하세요:")
file=open('C:\\python36\\'+file_Name+'.txt','w',encoding='utf-8')
headers={
    'Host':'openapi.naver.com',
    'User-Agent':'curl/7.43.0',
    'Accept':'*/*',
    'Content-Type':'application/xml',
    'X-Naver-Client-Id':'_M6QMrUwSzIQrzLnWOMj',
    'X-Naver-Client-Secret':'JCk88jjh7h'
    }
req=urllib.request.Request(fullURL,headers=headers)
f=urllib.request.urlopen(req)
resultXML=f.read()
xmlsoup=BeautifulSoup(resultXML,'html.parser')

items=xmlsoup.find_all('item')
for item in items:
    file.write('-----------------------------------------\n')
    file.write(temp+"제목:"+item.title.get_text(strip=True)+'\n')
    file.write('요약내용:'+item.description.get_text(strip=True)+'\n')
    if(input_Type==1):
        file.write('뉴스주소:'+item.originallink.get_text(strip=True)+'\n')        
    elif(input_Type==2):
        file.write('블로그주소:'+item.bloggerlink.get_text(strip=True)+'\n')        
    else:
        file.write('카페주소:'+item.cafeurl.get_text(strip=True)+'\n')        

file.close()
