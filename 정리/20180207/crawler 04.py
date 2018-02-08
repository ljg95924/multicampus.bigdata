import urllib.parse
import urllib.request
import re

def input_query():
    q = urllib.parse.quote_plus(str(input("검색할 단어 입력 :: ")))
    return "&query="+q

def bind_url():
    default_url="https://openapi.naver.com/v1/search/image.xml?"#
    #API_Key ="key=HQgQvmX5ifDVrMMldFhm"
    query= input_query()
    display ="&display=100"#
    start = "&start=1" #+str(1)
    sort="&sort=sim" #
    full_url = default_url + sort + start + display + query #+ API_Key 
    return full_url

def fetch_contents_from_url():
    url = bind_url()
    headers={
    "Host":"openapi.naver.com",
    "User-Agent" : "curl/7.43.0",
    "Accept":"*/*",
    "Content-Type":"application/xml",
    "X-Naver-Client-Id":"_M6QMrUwSzIQrzLnWOMj",
    "X-Naver-Client-Secret" : "JCk88jjh7h"
    }
    #r = urllib.request.urlopen(url)
    r = urllib.request.Request(url,headers=headers)
    m = urllib.request.urlopen(r)
    html = m.read()
    return html

def extract_text_in_tags(tags,tagname="title"):
    txt =[]
    reg = "[^<"+tagname+">][^<]+"
    for tag in tags:
        txt.append(re.search(reg,tag).group())
    return txt

def get_contents_from_html():
    html = fetch_contents_from_url()
    title_tags = re.findall("<title>[^<]+</title>",html.decode("utf-8"))
    link_tags = re.findall("<link>[^<]+</link>",html.decode("utf-8"))
    titles = extract_text_in_tags(title_tags,tagname ="title")
    links = extract_text_in_tags(link_tags,tagname="link")

    f = open("C:\\Python36\\image.html","w",encoding="utf-8")
    f.write("<html><body>")
    for i in range(1,len(titles)):
        f.write("<p>"+titles[i]+"</p>")
        f.write("<img src="+links[i]+"/>")
    f.write("</body></html>")
    f.close()

get_contents_from_html()
