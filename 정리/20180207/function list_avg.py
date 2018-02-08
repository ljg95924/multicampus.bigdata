def list_avg(numlist):
    total=0
    for k in numlist:
        total+=k
        avg=total/len(numlist)
    return avg

math_score=[90,80,70,50,60]
print(list_avg(math_score))
