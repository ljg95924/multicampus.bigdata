import re
r=re.compile("[a-zA-z]+")
result=r.finditer('My birthday is October 23th.')

for i in result:
    print(i.group())
    print(i.span())


print(re.split('[:]+','Apple Orange: Grape Cherry'))
print(re.split('[: ]+','Apple Orange : Grape Cherry'))

print(re.sub('-','**','751023-1901813'))
