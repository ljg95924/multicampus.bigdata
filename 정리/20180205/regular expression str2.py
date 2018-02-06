import re
str1='''https://search.daum.net/search?nil_suggest=btn&nil_ch=&rtupcoll=&w=tot&m=&f=&lpp=&DA=SBC&sug=&sq=&o=&sugo=&q=reg
 ?nil_suggest=btn&nil_ch=&rtupcoll=&w=tot&m=&f=&lpp=&DA=SBC&sug=&sq=&o=&sugo=&q=reg
'''
r=re.compile('\?(.+)')
print(r.findall(str1))
print()

r=re.compile('[^?&]+=\w*')
print(r.findall(str1))
print()

r=re.compile('https://.+\?')
print(r.findall(str1))
print()

r=re.compile('https://[^?]+')
print(r.findall(str1))
