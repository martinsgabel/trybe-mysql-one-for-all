SELECT 
MIN(subscriptions.subscription_value) AS faturamento_minimo,
MAX(subscriptions.subscription_value) AS faturamento_maximo,
FORMAT(AVG(subscriptions.subscription_value), 2) AS faturamento_medio,
SUM(subscriptions.subscription_value) AS faturamento_total
FROM SpotifyClone.subscriptions subscriptions
INNER JOIN SpotifyClone.users users
ON users.subscription_id = subscriptions.id;