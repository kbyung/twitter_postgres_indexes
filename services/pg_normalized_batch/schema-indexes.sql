CREATE INDEX idx_tag ON tweet_tags(tag);

CREATE INDEX idx_tweet_tags ON tweet_tags(id_tweets);

CREATE INDEX tweets_idx_fts on tweets USING gin(to_tsvector('english', text));

