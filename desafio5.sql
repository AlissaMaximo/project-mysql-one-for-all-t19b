SELECT song_name AS cancao, COUNT(us.song_id) AS reproducoes
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.user_song AS us
ON u.user_id=us.user_id 
INNER JOIN SpotifyClone.song AS s
ON s.song_id=us.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC LIMIT 2;