SELECT a.artist_name AS artista, al.album_name AS album, COUNT(us.user_id) AS seguidores
FROM SpotifyClone.artist AS a
INNER JOIN SpotifyClone.album AS al
ON al.artist=a.artist_id
INNER JOIN SpotifyClone.user_artist AS us
ON us.artist_id=a.artist_id
GROUP BY al.album_id
ORDER BY seguidores DESC, a.artist_name ASC, al.album_name ASC;