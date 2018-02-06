k_image=open('koala.jpg','rb') #읽기모드
k_image_2=open('koala_2.jpg','wb') #쓰기모드
k_image_2.write(k_image.read())
k_image.close()
k_image_2.close()
