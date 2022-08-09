SELECT songs.song_title AS `cancao`,
COUNT(history.song_id) AS `reproducoes`
FROM SpotifyClone.songs songs
INNER JOIN SpotifyClone.history history
ON history.song_id = songs.id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;