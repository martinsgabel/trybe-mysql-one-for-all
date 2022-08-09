SELECT  users.username AS `usuario`,
COUNT(history.song_id) AS `qtde_musicas_ouvidas`,
FORMAT(SUM(songs.duration)/60, 2) AS `total_minutos`
FROM SpotifyClone.users AS users
INNER JOIN SpotifyClone.history AS history
ON history.user_id = users.id
INNER JOIN SpotifyClone.songs AS songs
ON history.song_id = songs.id
GROUP BY `usuario`
ORDER BY `usuario`;