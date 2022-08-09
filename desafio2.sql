SELECT 
  (SELECT COUNT(id) FROM SpotifyClone.songs) AS cancoes,
  (SELECT COUNT(id) FROM SpotifyClone.artist) AS artistas,
  (SELECT COUNT(id) FROM SpotifyClone.albums) AS albuns; 