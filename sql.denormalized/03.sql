/*
 * Calculates the languages that use the hashtag #coronavirus
 */
SELECT
    lang,
    count(DISTINCT id_tweets) as count
FROM matview.tweets_tags
JOIN matview.tweets USING (id_tweets)
WHERE tag='#coronavirus'
GROUP BY lang
ORDER BY count DESC,lang;
