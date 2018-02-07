import urllib.request
import urllib.parse
from bs4 import BeautifulSoup
defaultURL='http://openapi.naver.com/search?&'
key='key='
target='&target=news'
sort='&sort=sim'
start='&start=1'
display='&display=100'
query='&query='+urllib.parse.quote_plus(str(input("검색어를 입력하세요:")))

fullURL=defaultURL+key+target+sort+start+display+query

print(fullURL)
file=open('C:\\python36\\naver_news.txt','w',encoding='utf-8')

f=urllib.request.urlopen(fullURL)
resultXML=f.read()
xmlsoup=BeautifulSoup(resultXML,'html.parser')

items=xmlsoup.find_all('item')

for item in items:
    file.write('-----------------------------------------\n')
    file.write("뉴스제목:"+item.title.get_text(strip=True)+'\n')
    file.write('요약내용:'+item.description.get_text(strip=True)+'\n')

file.close()
