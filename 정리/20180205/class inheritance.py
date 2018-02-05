class human:
    name="서진수"
    def intro(self):
        print("제 이름은 서주원입니다")

class child(human):
    def hello(self):
        print("저는 %s 2세 입니다." %self.name)
jinsu=child()
jinsu.hello()
jinsu.intro()
