a=[(1,3),(3,5),(7,9),(13,15)]
total=0
for i in range(0,len(a),1):
    for j in range(0,len(a[i]),1):
        total+=a[i][j]
    print(total)
