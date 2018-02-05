import re
r=re.compile("[ab]")
print(r.search("pizza"))

print(r.match("pizza"))

r=re.compile('[pP]')
print(r.search("apple"))
print(r.match('apple'))
print(r.match("apPle"))
print(r.match('pP'))
