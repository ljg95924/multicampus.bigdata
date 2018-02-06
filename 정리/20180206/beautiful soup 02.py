html='''
<html>
    <head>
        <title> test web </title>
    </head>
    <body>
        <p align='center'> text contents 1 </p>
        <p align='right'> text contents 2 </p>
        <p align='left'> text contents 3</p>
        <img src="C:\python36\koala.jpg" width='500' height='300'>
    </body>
</html> '''
from bs4 import BeautifulSoup
bs=BeautifulSoup(html,"html.parser")
print(bs.find('p',align='center'))
print(bs.find('p',align='right'))
print(bs.find('p',align='left'))
