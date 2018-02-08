def max_Score(S_list):
    S_list.sort()
    print( S_list[len(S_list)-1])
score=[]
for k in range(0,6,1):
    
    score.append(int(input("%d번째 학생의 성적을 입력하세요.")))
(max_Score(score))    
