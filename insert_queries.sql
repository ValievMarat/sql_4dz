--singers
INSERT INTO singers(id, name) 
VALUES(1, 'Pink Floyd');

INSERT INTO singers(id, name) 
VALUES(2, 'AC/DC');

INSERT INTO singers(id, name) 
VALUES(3, 'Backstreet Boys');

INSERT INTO singers(id, name) 
VALUES(4, 'Kanye West');

INSERT INTO singers(id, name) 
VALUES(5, 'Travis Scott');

INSERT INTO singers(id, name) 
VALUES(6, 'The Internet');

INSERT INTO singers(id, name) 
VALUES(7, 'Alf');

INSERT INTO singers(id, name) 
VALUES(8, 'Майкл Джексон'); 


--genres
INSERT INTO genres(id, name) 
VALUES(1, 'pop');

INSERT INTO genres(id, name) 
VALUES(2, 'rap');

INSERT INTO genres(id, name) 
VALUES(3, 'classic');

INSERT INTO genres(id, name) 
VALUES(4, 'opera');

INSERT INTO genres(id, name) 
VALUES(5, 'instrumental');


--alboms
INSERT INTO alboms(id, name, year) 
VALUES(1, 'new waves', 1990);

INSERT INTO alboms(id, name, year) 
VALUES(2, 'Ye', 2018);

INSERT INTO alboms(id, name, year) 
VALUES(3, 'Astroworld', 2018);

INSERT INTO alboms(id, name, year) 
VALUES(4, 'Hive Mind', 2018);

INSERT INTO alboms(id, name, year) 
VALUES(5, 'The Dark Side of the Moon', 1973);

INSERT INTO alboms(id, name, year) 
VALUES(6, 'Bat Out of Hell', 1977);

INSERT INTO alboms(id, name, year) 
VALUES(7, 'Millennium', 1999);

INSERT INTO alboms(id, name, year) 
VALUES(8, '21', 2011);

INSERT INTO alboms(id, name, year) 
VALUES(9, 'hits 2020', 2020);

INSERT INTO alboms(id, name, year) 
VALUES(10, 'twenty', 2020);


--tracks 
INSERT INTO tracks(id, name, duration, albom_id) 
VALUES(1, 'symphony #5', 120, 1);

INSERT INTO tracks(id, name, duration, albom_id) 
VALUES(2, 'Skeletons', 100, 2);

INSERT INTO tracks(id, name, duration, albom_id) 
VALUES(3, 'Sicko mod', 90, 2);

INSERT INTO tracks(id, name, duration, albom_id) 
VALUES(4, 'carousel', 130, 2);

INSERT INTO tracks(id, name, duration, albom_id) 
VALUES(5, 'La di da', 100, 3);

INSERT INTO tracks(id, name, duration, albom_id) 
VALUES(6, 'Bravo', 120, 3);

INSERT INTO tracks(id, name, duration, albom_id) 
VALUES(7, 'Mood', 80, 3);

INSERT INTO tracks(id, name, duration, albom_id) 
VALUES(8, 'Speak to Me', 60, 4);

INSERT INTO tracks(id, name, duration, albom_id) 
VALUES(9, 'Money', 140, 4);

INSERT INTO tracks(id, name, duration, albom_id) 
VALUES(10, 'Lunatic', 240, 4);

INSERT INTO tracks(id, name, duration, albom_id) 
VALUES(11, 'Heaven Can Wait', 280, 5);

INSERT INTO tracks(id, name, duration, albom_id) 
VALUES(12, 'For Crying Out Loud', 120, 5);

INSERT INTO tracks(id, name, duration, albom_id) 
VALUES(13, 'I need you tonight', 180, 6);

INSERT INTO tracks(id, name, duration, albom_id) 
VALUES(14, 'my mind', 130, 6);

INSERT INTO tracks(id, name, duration, albom_id) 
VALUES(15, 'Rolling in the Deep', 104, 7);

INSERT INTO tracks(id, name, duration, albom_id) 
VALUES(16,'Yikes', 120, 8);

INSERT INTO tracks(id, name, duration, albom_id) 
VALUES(17, 'All mine', 144, 8);

INSERT INTO tracks(id, name, duration, albom_id) 
VALUES(18, 'хороший мой день', 270, 6);


--collections
INSERT INTO collections(id, name, year) 
VALUES(1, 'Great hits', 2015);

INSERT INTO collections(id, name, year) 
VALUES(2, 'One', 2011);

INSERT INTO collections(id, name, year) 
VALUES(3, 'Лирика', 2011);

INSERT INTO collections(id, name, year) 
VALUES(4, 'Тренировка', 2018);

INSERT INTO collections(id, name, year) 
VALUES(5, 'Golden values', 1988);

INSERT INTO collections(id, name, year) 
VALUES(6, 'All stars', 2019);

INSERT INTO collections(id, name, year) 
VALUES(7, 'day', 2010);

INSERT INTO collections(id, name, year) 
VALUES(8, 'h&m', 2017);


--albomssingers
INSERT INTO albomssingers(albom_id, singer_id) 
VALUES(1, 7);

INSERT INTO albomssingers(albom_id, singer_id) 
VALUES(2, 5);

INSERT INTO albomssingers(albom_id, singer_id) 
VALUES(3, 6);

INSERT INTO albomssingers(albom_id, singer_id) 
VALUES(4, 1);

INSERT INTO albomssingers(albom_id, singer_id) 
VALUES(5, 2);

INSERT INTO albomssingers(albom_id, singer_id) 
VALUES(6, 3);

INSERT INTO albomssingers(albom_id, singer_id) 
VALUES(7, 8);

INSERT INTO albomssingers(albom_id, singer_id) 
VALUES(8, 4);

INSERT INTO albomssingers(albom_id, singer_id) 
VALUES(9, 8);

INSERT INTO albomssingers(albom_id, singer_id) 
VALUES(10, 3);


--genressingers
INSERT INTO genressingers(genre_id, singer_id) 
VALUES(1, 1);

INSERT INTO genressingers(genre_id, singer_id) 
VALUES(2, 4);

INSERT INTO genressingers(genre_id, singer_id) 
VALUES(3, 7);

INSERT INTO genressingers(genre_id, singer_id) 
VALUES(4, 2);

INSERT INTO genressingers(genre_id, singer_id) 
VALUES(5, 8);

INSERT INTO genressingers(genre_id, singer_id) 
VALUES(1, 3);

INSERT INTO genressingers(genre_id, singer_id) 
VALUES(1, 5);

INSERT INTO genressingers(genre_id, singer_id) 
VALUES(1, 6);

INSERT INTO genressingers(genre_id, singer_id) 
VALUES(3, 6);

INSERT INTO genressingers(genre_id, singer_id) 
VALUES(3, 1);

INSERT INTO genressingers(genre_id, singer_id) 
VALUES(3, 2);


--trackscollections
INSERT INTO trackscollections(track_id, collection_id) 
VALUES(1, 1);

INSERT INTO trackscollections(track_id, collection_id) 
VALUES(7, 1);

INSERT INTO trackscollections(track_id, collection_id) 
VALUES(10, 1);

INSERT INTO trackscollections(track_id, collection_id) 
VALUES(7, 2);

INSERT INTO trackscollections(track_id, collection_id) 
VALUES(6, 2);

INSERT INTO trackscollections(track_id, collection_id) 
VALUES(11, 3);

INSERT INTO trackscollections(track_id, collection_id) 
VALUES(16, 3);

INSERT INTO trackscollections(track_id, collection_id) 
VALUES(17, 3);

INSERT INTO trackscollections(track_id, collection_id) 
VALUES(9, 4);

INSERT INTO trackscollections(track_id, collection_id) 
VALUES(8, 4);

INSERT INTO trackscollections(track_id, collection_id) 
VALUES(6, 5);

INSERT INTO trackscollections(track_id, collection_id) 
VALUES(4, 5);

INSERT INTO trackscollections(track_id, collection_id) 
VALUES(13, 6);

INSERT INTO trackscollections(track_id, collection_id) 
VALUES(15, 6);

INSERT INTO trackscollections(track_id, collection_id) 
VALUES(16, 7);

INSERT INTO trackscollections(track_id, collection_id) 
VALUES(17, 7);

INSERT INTO trackscollections(track_id, collection_id) 
VALUES(3, 8);

INSERT INTO trackscollections(track_id, collection_id) 
VALUES(5, 8);

INSERT INTO trackscollections(track_id, collection_id) 
VALUES(6, 8);

INSERT INTO trackscollections(track_id, collection_id) 
VALUES(9, 8); 
