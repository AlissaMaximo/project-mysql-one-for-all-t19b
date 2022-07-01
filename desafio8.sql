SELECT a.artist_name AS artista, al.album_name AS album
FROM SpotifyClone.artist AS a
INNER JOIN SpotifyClone.album AS al
ON al.artist=a.artist_id
WHERE a.artist_name="Walter Phoenix"
GROUP BY al.album_id 
ORDER BY al.album_name ASC;