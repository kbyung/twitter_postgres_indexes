SELECT count(distinct id_tweets)
FROM matview.tweets_tags
WHERE tag='#coronavirus';
