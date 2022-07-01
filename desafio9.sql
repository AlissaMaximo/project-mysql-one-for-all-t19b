SELECT COUNT(song_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.user_song AS us
ON u.user_id=us.user_id
WHERE u.user_name="Bill";