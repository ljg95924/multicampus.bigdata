import urllib.request

req=urllib.request
print(req.urlopen('http://wikidocs.net/'))
d=req.urlopen('https://wikidocs.net/')
status=d.getheaders()
for s in status:
    print(s)
print(d.status)

print(d.read())
