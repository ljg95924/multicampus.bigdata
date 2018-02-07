html="""
<html>
    <head>
        <title> test web</title>
        <body>
            <p class="ptag black" align='center'> text contents 1</p>
            <p class="ptag yellow" align='center'> text contents 2</p>
            <p class="ptag red" align='center'> text contents 3</p>
            <img src='C:\python36\koala.jpg' width='500' height='300'>
        </body>
    </html>
    """
from bs4 import BeautifulSoup
bs=BeautifulSoup(html,"html.parser")
p_tag=bs.find('p')
print(p_tag['class'])


p_tag['class'][1]='white'
print('p_tag["class"]:',p_tag['class']) #p_tag의 class속성 출력
print('p_tag["align"]:',p_tag['align'])
print('------------------------')
print(p_tag.attrs) #p_tag의 속성들
print('------------------------')
body_tag=bs.find('body')
print('body_tag: ',body_tag)
print('------------------------')
for child in body_tag.children:
    print(child)
print('------------------------')
img_tag=bs.find('img')
print(img_tag.parent) #img태그의 부모
print('------------------------')

p_tag=bs.find('p')
print(p_tag)
print('------------------------')
print(p_tag.find_parent('body'))
print('------------------------')
print(p_tag.find_parent('html'))
print('------------------------')
title_tag=bs.find('title')
print(title_tag.find_parent('head'))
print('------------------------')

html="""
<html>
    <head>
        <title> test web</title>
        <body>
            <p class="ptag black" align='center'> text contents 1</p>
            <p class="ptag yellow" align='center'> text contents 2</p>
            <p class="ptag red" align='center'> text contents 3</p>
            <img src='C:\python36\koala.jpg' width='500' height='300'>

            <div class='container'>
                <p class='text'> </p>
            </div>
        </body>
    </html>
    """
bs=BeautifulSoup(html,"html.parser")
p_tag=bs.find('p',class_='text')
parents=p_tag.find_parents()
for parent in parents:
    print(parent.name)
