mixlist=['apple',5,'banana','grape',3,8,6,'melon']

for k in mixlist:
    if type(k)==str:
        print(k)
        print("type is string")
    else:
        print(k)
        print("type is integer")
