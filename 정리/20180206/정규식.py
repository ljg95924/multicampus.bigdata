import re
str='''
RegExr v3 was created by gskinner.com, and is proudly hosted. by Media Temple.
Edit the Expression & Text! to see matches. 
Roll? over matches or the expression% for details. PCRE & Javascript flavors of RegEx are supported.
The side bar includes a Cheatsheet, full Reference, and Help. 
You can also Save & Share with the Community, and view patterns. you create# or favorite in My Patterns.
Explore results with the Tools below. Replace & List output~ custom results.
Details lists capture groups. Explain describes your expression in plain English'''


r=re.compile("[A-Z]\w+")
print(r.findall(str))
print()

r=re.compile('[a-z]\w+')
print(r.findall(str))
print()

r=re.compile(r'\b[a-z]\w+\.')
print(r.findall(str))
print()

r=re.compile(r'\b\w+[^\s\w]\B')
print(r.findall(str))
print()


