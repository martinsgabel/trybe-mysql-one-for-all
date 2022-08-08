DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.user (
  id INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(30) NOT NULL,
  user_age INT,
  subscription_type VARCHAR(30) NOT NULL,
  subscription_date DATE NOT NULL,
  subscription_value INT NOT NULL
);

CREATE TABLE SpotifyClone.songs (
  id INT PRIMARY KEY AUTO_INCREMENT,
  song_title VARCHAR(50) NOT NULL,
  duration INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES SpotifyClone.albums (id)
);

CREATE TABLE SpotifyClone.history (
  FOREIGN KEY (song_id) REFERENCES SpotifyClone.songs (id),
  FOREIGN KEY (user_id) REFERENCES SpotifyClone.user (id),
  reproduction_date DATETIME NOT NULL
);

CREATE TABLE SpotifyClone.albums (
  id INT PRIMARY KEY AUTO_INCREMENT,
  album_title VARCHAR(30),
  FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artist (id),
  release_year YEAR,
);

CREATE TABLE SpotifyClone.artist (
  id INT PRIMARY KEY AUTO_INCREMENT,
  artist_name VARCHAR(30)
);

CREATE TABLE SpotifyClone.following (
  FOREIGN KEY (user_id) REFERENCES SpotifyClone.user (id),
  FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artist (id),
);

INSERT INTO SpotifyClone.user (
  id,
  username,
  user_age,
  subscription_type,
  subscription_date,
  subscription_value
) VALUES (
  
)