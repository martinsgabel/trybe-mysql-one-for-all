SELECT COUNT(history.user_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.history history
INNER JOIN SpotifyClone.users users
ON history.user_id = users.id
WHERE users.username = 'Bill';