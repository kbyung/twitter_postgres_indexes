/*
 * Count the number of English tweets containing the word "coronavirus"
 */
SELECT
    count(*)
FROM matview.tweets
WHERE to_tsvector('english',text)@@to_tsquery('english','coronavirus')
  AND lang='en'
;
