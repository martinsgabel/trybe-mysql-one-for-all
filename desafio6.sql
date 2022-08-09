SELECT 
FORMAT(MIN(subscriptions.subscription_value), 2) AS faturamento_minimo,
FORMAT(MAX(subscriptions.subscription_value), 2) AS faturamento_maximo,
FORMAT(AVG(subscriptions.subscription_value), 2) AS faturamento_medio,
FORMAT(SUM(subscriptions.subscription_value), 2) AS faturamento_total
FROM SpotifyClone.subscriptions subscriptions
INNER JOIN SpotifyClone.users users
ON users.subscription_id = subscriptions.id;