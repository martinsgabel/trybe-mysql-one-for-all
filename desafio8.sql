SELECT artist.artist_name AS artista,
albums.album_title AS album
FROM SpotifyClone.artist artist
INNER JOIN SpotifyClone.albums albums
ON artist.id = albums.artist_id
WHERE artist.artist_name = 'Walter Phoenix'
GROUP BY album
ORDER BY album;