SELECT 
	(SELECT COUNT(song_id) from SpotifyClone.song) AS cancoes,
  (SELECT COUNT(artist_id) from SpotifyClone.artist) AS artistas,
  (SELECT COUNT(album_id) from SpotifyClone.album) AS albuns;