class bread:
    meterial='팥'
    def say(self):
        print("저는 %s 으로 만든 붕어빵입니다" %self.meterial)
        
first_bread=bread()
print(first_bread.meterial)

second_bread=bread()
print(second_bread.meterial)

second_bread.meterial='슈크림'
print(second_bread.meterial)

first_bread.say()
