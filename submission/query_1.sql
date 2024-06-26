CREATE TABLE mamontesp.actors (
	  actor VARCHAR
	, actor_id VARCHAR
	, films ARRAY(
		ROW( film VARCHAR
			, votes INTEGER
			, rating DOUBLE
			, film_id VARCHAR
			, year INTEGER ))
	, quality_class VARCHAR
	, is_active BOOLEAN
	, current_year INTEGER
)
WITH (
	format = 'PARQUET',
	partitioning = ARRAY['current_year']
)

-- actors table 
-- actor
-- actor_id
-- films
-- quality_class
-- is_active
-- current_year