SELECT u.user_name AS usuario, COUNT(us.song_id) AS qtd, TRUNCATE(SUM(duration_seconds)/60, 2) AS total_segundos
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.user_song AS us
ON u.user_id=us.user_id
INNER JOIN SpotifyClone.song AS s
ON s.song_id=us.song_id
GROUP BY u.user_name
ORDER BY u.user_name ASC;