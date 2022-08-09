SELECT  users.username as `usuario`,
COUNT(history.song_id) as `qtde_musicas_ouvidas`,
FORMAT(SUM(songs.duration)/60, 2) as `total_minutos`
FROM SpotifyClone.users AS users
INNER JOIN SpotifyClone.history AS history
ON history.user_id = users.id
INNER JOIN SpotifyClone.songs AS songs
ON history.song_id = songs.id
GROUP BY `usuario`
ORDER BY `usuario`;