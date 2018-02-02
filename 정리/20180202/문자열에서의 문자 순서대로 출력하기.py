alpa='abcde'
alpa_list=list(alpa)
order=1
temp=""
alpa_list.reverse()
for k in range(order, len(alpa)+1,1):

    
    temp=alpa_list.pop()
    print(temp)
