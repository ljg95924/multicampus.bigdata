import re
r=re.compile('a.c')
print(r.search('abc'))
print(r.search('afc'))
print(r.search('ac'))

r=re.compile('ck?w')
print(r.search('cw'))
print(r.search('ckw'))
print(r.search('ckkw'))
print(r.search('ckk'))
print(r.search('kkkw'))

r=re.compile("^c")
print(r.search('ckw'))
print(r.search('sjs'))

r=re.compile("e$")
print(r.search('apple'))
print(r.search('banana'))

r=re.compile('[abcd]')
print(r.search("pizza"))
print(r.search("bread"))
print(r.search("mashroom"))
