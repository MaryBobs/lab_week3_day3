DROP TABLE albums;
DROP TABLE artists;
-- DROP TABLE artist;


CREATE TABLE artists(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE albums(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  genre VARCHAR(255),
  artist_id INT4 REFERENCES artists(id)
);
