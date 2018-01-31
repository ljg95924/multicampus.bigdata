aa=[10,20,30,40]
print("aa[1]은 %d, aa[-2]는 %d" %(aa[-1],aa[-2]))

print(aa[0:3])
print(aa[2:4])
print(aa[2:])
aa=[10,20,30]
bb=[40,50,60]
print(aa+bb)
print(aa*3)

print("\n")

aa=[10,20,30]
aa[1]=200
print(aa)

aa=[10,20,30]
aa[1:2]=[200,201]
print(aa)
aa=[10,20,30]
aa[1]=[200,201]
print(aa)
del(aa[1])
print(aa)
