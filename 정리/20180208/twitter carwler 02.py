import tweepy
Consumer_Key="qK4MOO2BagsrQmyvESQcPZdLs"
Consumer_Secret="NeiuRuW62z8KprHHpmPrfxzpefxo1BQaYe2X0K5vUTsizbP3e4"
Access_Token="czpSsOdBphb9rbj"
Access_Token_Secret="961405904921874433"

auth=tweepy.OAuthHandler(Consumer_Key,Consumer_Secret)
auth.set_access_token(Access_Token,Access_Token_Secret)
api=tweepy.API(auth)
keyword='안녕'
result=[]
for i in range(1,3):
    tweets=api.search(keyword)
    for tweet in tweets:
        result.append(tweet)
print(len(result))
print(type(result[0]))
