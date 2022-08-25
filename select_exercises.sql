

--The name of all albums by Pink Floyd.
--The year Sgt. Pepper's Lonely Hearts Club Band was released
--The genre for Nevermind
--Which albums were released in the 1990s
--Which albums had less than 20 million certified sales
--All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?

SELECT * FROM albums WHERE name = 'Pink Floyd';

SELECT release_date
FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band'

SELECT genre
FROM albums
WHERE name = 'Nevermind'

SELECT * FROM albums WHERE release_date = 1990;

SELECT * FROM albums WHERE  < 20;

SELECT * FROM albums WHERE genre = 'Rock';
--Because we want a main genre and sub genre contains more than one

