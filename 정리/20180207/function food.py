def dec_food(str1):
    if(str1=='앞'):
        return "중국 요리"
    elif(str1 =='뒤'):
        return "일본 요리"
    else:
        return '잘못입력'

str1=input("앞 뒤 중 입력하세요")
print(dec_food(str1))
