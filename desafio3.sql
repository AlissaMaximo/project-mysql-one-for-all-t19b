SELECT user_name AS usuario, 
COUNT(song_id) AS qtde_musicas_ouvidas FROM SpotifyClone.user_song AS us INNER JOIN SpotifyClone.user AS u ON us.user_id = u.user_id, 
(SELECT SUM(duration_seconds) AS total_minutos FROM SpotifyClone.song AS s INNER JOIN SpotifyClone.user_song AS u_s ON s.song_id = u_s.song_id GROUP BY song_id) GROUP BY u.user_id;