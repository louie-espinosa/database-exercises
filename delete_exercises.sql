--Write SELECT statements for:
--Albums released after 1991
SELECT * FROM albums WHERE release_date > 1991;
--Albums with the genre 'disco'
SELECT * FROM albums WHERE genre = 'disco'; --does not find because this genre does NOT exist
--Albums by 'Whitney Houston' (...or maybe an artist of your choice)
SELECT * FROM albums WHERE artist = 'Whitney Houston';
--Deleting the selections
DELETE FROM albums WHERE release_date > 1991;
--Albums with the genre 'disco'
DELETE FROM albums WHERE genre = 'disco'; --does not find because this genre does NOT exist
--Albums by 'Whitney Houston' (...or maybe an artist of your choice)
DELETE FROM albums WHERE artist = 'Whitney Houston';