import tweepy
Consumer_Key='qK4MOO2BagsrQmyvESQcPZdLs'
Consumer_Secret='NeiuRuW62z8KprHHpmPrfxzpefxo1BQaYe2X0K5vUTsizbP3e4'
Access_Token='961405904921874433-9bUlqKpx3DOd8PJeAUo5CQljFD8D2OV'
Access_Token_Secret='NVGJrg6NPxXC3IZPtCH6gMMo6ntmqficyoGFmLmz2ZMmB'

auth=tweepy.OAuthHandler(Consumer_Key,Consumer_Secret)
auth.set_access_token(Access_Token,Access_Token_Secret)
api=tweepy.API(auth)

keyword='증'
result=[]

for i in range(1,3):
    tweets=api.search(keyword)
    for tweet in tweets:
        result.append(tweet)

print(len(result))
print(type(result[0]))

for i in range(0,len(result)):
    try:
        print(result[i])
    except UnicodeEncodeError:
        print("인코딩 에러")
        continue
    
f=open('tweet.txt','w')
for i in range(0,len(result)):
    try:
        f.write(str(result[i])+'\n')
    except UnicodeEncodeError:
        print("인코딩에러")
        continue
    f.close()
