html="""
<html>
    <head>
        <title> test web </title>
    </head>
    <body>
        <p align = "center"> text contents </p>
        <img src="c:\python36\koala.jpg" width="500" height="300">
    </body>
</html>
"""
from bs4 import BeautifulSoup
bs=BeautifulSoup(html,"html.parser")
print(bs.prettify())

print(bs.find('p')) #p태그를 출력
