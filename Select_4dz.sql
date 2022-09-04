--1. количество исполнителей в каждом жанре
SELECT g.name, COUNT(DISTINCT gs.singer_id) count_singers FROM genressingers gs 
INNER JOIN genres g ON gs.genre_id = g.id 
GROUP BY g.name
ORDER BY count_singers DESC;

--2. количество треков, вошедших в альбомы 2019-2020 годов
SELECT COUNT(*) FROM trackscollections tc
JOIN collections c ON tc.collection_id = c.id 
WHERE c.year BETWEEN 2019 AND 2020;

--3. средняя продолжительность треков по каждому альбому
SELECT a.name, AVG(t.duration) FROM tracks t
JOIN alboms a ON t.albom_id = a.id
GROUP BY a.name;

--4. все исполнители, которые не выпустили альбомы в 2020 году
SELECT s.name FROM singers s 
LEFT JOIN 
(SELECT als.singer_id id FROM albomssingers als 
JOIN alboms a ON als.albom_id = a.id
WHERE a.year = 2020) singers_2020 ON s.id = singers_2020.id
WHERE singers_2020.id IS null;

--5. названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
SELECT DISTINCT c.name FROM trackscollections tc 
JOIN collections c ON tc.collection_id = c.id 
JOIN tracks t ON tc.track_id = t.id
JOIN alboms a ON t.albom_id = a.id 
JOIN albomssingers als ON a.id = als.albom_id 
JOIN singers s ON als.singer_id = s.id 
WHERE s.name = 'Pink Floyd';

--6. название альбомов, в которых присутствуют исполнители более 1 жанра
SELECT a.name FROM albomssingers als  
JOIN (SELECT g.singer_id, COUNT(DISTINCT g.genre_id)  FROM genressingers g
GROUP BY g.singer_id 
HAVING COUNT(DISTINCT g.genre_id) > 1) singers_manygenres ON als.singer_id = singers_manygenres.singer_id
JOIN alboms a ON als.albom_id = a.id;

--7. наименование треков, которые не входят в сборники
SELECT t.name FROM tracks t 
LEFT JOIN trackscollections tc ON t.id = tc.track_id 
WHERE tc.id IS null;

--8. исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько)
SELECT s.name FROM singers s 
JOIN albomssingers als ON s.id = als.singer_id 
JOIN tracks t ON als.albom_id = t.albom_id 
WHERE t.duration = (SELECT MIN(t.duration) FROM tracks t);

--9. название альбомов, содержащих наименьшее количество треков
SELECT a.name FROM alboms a 
JOIN 
(SELECT t.albom_id, COUNT(t.id) FROM tracks t
GROUP BY t.albom_id 
HAVING COUNT(t.id) = 
(SELECT MIN(min_als.count_tracks) FROM (
SELECT t.albom_id, COUNT(t.id) count_tracks FROM tracks t
GROUP BY t.albom_id) min_als)) alboms_min ON a.id = alboms_min.albom_id;