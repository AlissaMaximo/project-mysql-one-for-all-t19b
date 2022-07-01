SELECT FORMAT(MIN(s.subscription_price), 2) AS faturamento_minimo, ROUND(MAX(s.subscription_price), 2) AS faturamento_maximo, ROUND(AVG(subscription_price), 2) AS faturamento_medio, TRUNCATE(SUM(subscription_price), 2) AS faturamento_total FROM SpotifyClone.subscription AS s INNER JOIN SpotifyClone.user AS u ON s.subscription_id=u.subscription;