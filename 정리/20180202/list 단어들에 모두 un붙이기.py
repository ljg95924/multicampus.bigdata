word_list=['scramble','kindly','do','learn']

print(word_list)

for k in range(0,4,1):
    temp=word_list.pop()
    temp="un"+temp
    word_list.insert(0,temp)
print(word_list)
