html="""
<html>
    <head>
        <title> test web </title>
    </head>
    <body>
        <p align='center'> text contents1 </p>
        <p align='right'> text contents2 </p>
        <p align='leftr'> text contents3 </p>
        <img src="c:\python36\koala.jpg" width='500' height='300'>
    </body>
</html>"""

from bs4 import BeautifulSoup
bs=BeautifulSoup(html,"html.parser")
head_tag=bs.find('head')
print(head_tag.find('title'))

body_tag=bs.find('body')
list1=body_tag.find_all(['p','img']) #body에서 p,img 찾기
for tag in list1:
    print(tag)
    
print()

import re
tags=bs.find_all(re.compile("^p"))#모두찾기
print(tags)
print()
print(bs.find_all(align='center'))
print()
print(bs.find_all(width='500'))
print()
print(bs.find_all(text=' text contents1 '))
print()
p_tag=body_tag.find('p')
print(p_tag.string)
#문장 가져오기
print('text():',body_tag.get_text())

print('text(strip=True):',body_tag.get_text(strip=True))

print('body_tag.get_text(-,strip=True):',body_tag.get_text('-',strip=True))


