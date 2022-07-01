SELECT u.user_name AS usuario, IF(MAX(YEAR(reproduction_date)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.user_song AS us
ON u.user_id=us.user_id 
GROUP BY u.user_name
ORDER BY u.user_name ASC;