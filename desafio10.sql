SELECT s.song_name AS nome, COUNT(s.song_id) AS reproducoes
FROM SpotifyClone.song AS s
INNER JOIN SpotifyClone.user_song AS us
ON us.song_id=s.song_id
INNER JOIN SpotifyClone.user AS u
ON u.user_id=us.user_id
WHERE (u.subscription = 1 OR u.subscription = 3)
GROUP BY s.song_id
ORDER BY s.song_name ASC;