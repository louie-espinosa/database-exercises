--All albums
SELECT * FROM albums
--All albums released before 1980
SELECT * FROM albums WHERE release_date < 1980;
--All albums by Michael Jackson
SELECT * FROM albums WHERE artist = 'Michael Jackson';
--Applying update statements:
--making all albums 10 times more popular
UPDATE albums
SET sales = sales * 10
SELECT * FROM albums
--move all albums before 1980 to 1800s. YEAR data type will throw an error
UPDATE albums
SET release_date = 1800 -- or set release_date = release_date - 100
WHERE release_date < 1980
SELECT * FROM albums WHERE release_date < 1980;
--change 'Michael Jackson' to 'Peter Jackson'
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson'
SELECT * FROM albums WHERE artist = 'Peter Jackson';
--Add SELECT statements after each update to see update

