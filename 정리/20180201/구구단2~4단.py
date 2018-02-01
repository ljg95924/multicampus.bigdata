for k in range(2,5,1):
    for j in range(1,10,1):
        print("%d * %d = %d" %(k,j,k*j))
print("")
k,j=2,1
while k <5:
    while j<10:
        print("%d * %d = %d" %(k,j,k*j))
        
        j+=1
    k+=1
    j=0
