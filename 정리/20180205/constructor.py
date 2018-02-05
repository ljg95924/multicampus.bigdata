class bread:
    def __init__(self,m):
        self.meterial=m
    def say(self):
        print("저는 %s 으로 만든 빵입니다." %self.meterial)
first_bread=bread("팥")
first_bread.say()
