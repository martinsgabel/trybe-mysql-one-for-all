SELECT songs.song_title AS nome,
COUNT(history.user_id) AS reproducoes
FROM SpotifyClone.songs songs
INNER JOIN SpotifyClone.history history
ON history.song_id = songs.id
INNER JOIN SpotifyClone.users users
ON history.user_id = users.id
WHERE users.subscription_id = 1 OR users.subscription_id = 4
GROUP BY nome
ORDER BY nome;