SELECT 
artist.artist_name AS artista,
albums.album_title AS album,
COUNT(following.user_id) AS seguidores
FROM SpotifyClone.artist artist
INNER JOIN SpotifyClone.albums albums
ON albums.artist_id = artist.id
INNER JOIN SpotifyClone.following following
ON following.artist_id = artist.id
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC;