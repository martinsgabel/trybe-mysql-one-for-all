DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.subscriptions (
  id INT PRIMARY KEY AUTO_INCREMENT,
  subscription_type VARCHAR(20) NOT NULL,
  subscription_value INT NOT NULL
);

CREATE TABLE SpotifyClone.users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(30) NOT NULL,
  user_age INT,
  subscription_id INT NOT NULL,
  FOREIGN KEY (subscription_id) REFERENCES SpotifyClone.subscriptions (id),
  subscription_date DATE NOT NULL
);

CREATE TABLE SpotifyClone.artist (
  id INT PRIMARY KEY AUTO_INCREMENT,
  artist_name VARCHAR(30)
);

CREATE TABLE SpotifyClone.albums (
  id INT PRIMARY KEY AUTO_INCREMENT,
  album_title VARCHAR(30),
  artist_id INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artist (id),
  release_year YEAR
);

CREATE TABLE SpotifyClone.songs (
  id INT PRIMARY KEY AUTO_INCREMENT,
  song_title VARCHAR(50) NOT NULL,
  duration INT NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES SpotifyClone.albums (id)
);

CREATE TABLE SpotifyClone.history (
  song_id INT NOT NULL,
  user_id INT NOT NULL,
  PRIMARY KEY(song_id, user_id),
  FOREIGN KEY (song_id) REFERENCES SpotifyClone.songs (id),
  FOREIGN KEY (user_id) REFERENCES SpotifyClone.users (id),
  reproduction_date DATETIME NOT NULL
);

CREATE TABLE SpotifyClone.following (
  user_id INT NOT NULL,
  artist_id INT NOT NULL,
  PRIMARY KEY (user_id, artist_id),
  FOREIGN KEY (user_id) REFERENCES SpotifyClone.users (id),
  FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artist (id)
);

INSERT INTO SpotifyClone.subscriptions (
  subscription_type,
  subscription_value
) VALUES 
('gratuito', 0),
('familiar', 799),
('universitário', 599),
('pessoal', 699);


INSERT INTO SpotifyClone.users (
  username,
  user_age,
  subscription_id,
  subscription_date
) VALUES 
('Thati', 23, 1, '2019-10-20'),
('Cintia', 35, 2, '2017-12-30'),
('Bill', 20, 3, '2019-06-05'),
('Roger', 45, 4, '2020-05-13'),
('Norman', 58, 4, '2017-02-17'),
('Patrick', 33, 2, '2017-01-06'),
('Vivian', 26, 3, '2018-01-05'),
('Carol', 19, 3, '2018-02-14'),
('Angelina', 42, 2, '2018-04-29'),
('Paul', 46, 2, '2017-01-17');

INSERT INTO SpotifyClone.artist (
  artist_name
) VALUES 
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon'),
('Tyler Isle'),
('Fog');

INSERT INTO SpotifyClone.albums (
  album_title,
  artist_id,
  release_year
) VALUES 
('Envious', 1, '1990'),
('Exuberant', 1, '1993'),
('Hallowed Steam', 2, '1995'),
('Incandescent', 3, '1998'),
('Temporary Culture', 4, '2001'),
('Library of liberty', 4, '2003'),
('Chained Down', 5, '2007'),
('Cabinet of fools', 5, '2012'),
('No guarantees', 5, '2015'),
('Apparatus', 6, '2015');

INSERT INTO SpotifyClone.songs (
  song_title,
  duration,
  album_id
) VALUES 
("Honey", 79, 10),
("Walking And Man", 229, 7),
("Young And Father", 197, 6),
("Diamond Power", 241, 4),
("Let's Be Silly", 132, 4),
("I Heard I Want To Bo Alone", 120, 9),
("Finding My Traditions", 179, 7),
("Without My Love", 111, 6),
("Baby", 136, 10),
("Magic Circus", 105, 3),
("Dance With Her Own", 116, 1),
("Hard And Time", 135, 7),
("Reflections Of Magic", 163, 1),
("I Ride Alone", 151, 9),
("Honey, I'm A Lone Wolf", 150, 7),
("Honey, So Do I", 207, 3),
("Rock His Everything", 223, 4),
("Soul For Us", 200, 1),
("Wouldn't It Be Nice", 213, 10),
("He Heard You're Bad For Me", 154, 8),
("He Hopes We Can't Stay", 210, 8),
("Walking And Game", 123, 6),
("Time Fireworks", 152, 2),
("Troubles Of My Inner Fire", 203, 2),
("Celebration Of More", 146, 4),
("You Make Me Feel So..", 83, 10),
("He's Walking Away", 159, 9),
("He's Trouble", 138, 9),
("Thang Of Thunder", 240, 5),
("Words Of Her Life", 185, 5),
("Sweetie, Let's Go Wild", 139, 3),
("She Knows", 244, 3),
("History Of My Roses", 222, 6),
("Home Forever", 231, 4),
("Fantasy For Me", 100, 4),
("Without My Streets", 176, 5),
("Need Of The Evening", 190, 6),
("She Thinks I Won't Stay Tonight", 166, 8),
("I Know I Know", 117, 8),
("You Cheated On Me", 95, 10);

INSERT INTO SpotifyClone.history (
  song_id,
  user_id,
  reproduction_date
) VALUES 
(1, 1, '2020-02-28 10:45:55'),
(2, 1, '2020-05-02 05:30:35'),
(3, 1, '2020-03-06 11:22:33'),
(4, 1, '2020-08-05 08:05:17'),
(4, 5, '2020-08-06 15:23:43'),
(5, 1, '2020-09-14 16:32:22'),
(6, 2, '2020-01-02 07:40:33'),
(7, 2, '2020-05-16 06:16:22'),
(8, 2, '2020-10-09 12:27:48'),
(8, 10, '2017-12-04 05:33:43'),
(9, 2, '2020-09-21 13:14:46'),
(9, 8, '2018-03-21 16:56:40'),
(10, 3, '2020-11-13 16:55:13'),
(11, 3, '2020-12-05 18:38:30'),
(12, 3, '2020-07-30 10:00:00'),
(13, 4, '2021-08-15 17:10:10'),
(14, 4, '2021-07-10 15:20:30'),
(15, 4, '2021-01-09 01:44:33'),
(16, 5, '2020-07-03 19:33:28'),
(17, 5, '2017-02-24 21:14:22'),
(17, 10, '2017-07-27 05:24:49'),
(18, 5, '2020-11-10 13:52:27'),
(19, 6, '2019-02-07 20:33:48'),
(20, 6, '2017-01-24 00:31:17'),
(21, 6, '2017-10-12 12:35:20'),
(22, 6, '2018-05-29 14:56:41'),
(23, 7, '2018-05-09 22:30:49'),
(24, 7, '2020-07-27 12:52:58'),
(25, 7, '2018-01-16 18:40:43'),
(26, 8, '2020-10-18 13:38:05'),
(27, 8, '2019-05-25 08:14:03'),
(28, 8, '2021-08-15 21:37:09'),
(29, 9, '2021-05-24 17:23:45'),
(30, 9, '2018-12-07 22:48:52'),
(31, 9, '2021-03-14 06:14:26'),
(32, 9, '2020-04-01 03:36:00'),
(33, 10, '2017-02-06 08:21:34'),
(34, 10, '2017-12-25 01:03:57');

INSERT INTO SpotifyClone.following (
  user_id,
  artist_id
) VALUES 
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4),
(5, 5),
(5, 6),
(6, 6),
(6, 3),
(6, 1),
(7, 2),
(7, 5),
(8, 1),
(8, 5),
(9, 6),
(9, 4),
(9, 3),
(10, 2),
(10, 6);