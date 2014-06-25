CREATE TABLE games (
  id integer PRIMARY KEY AUTOINCREMENT
);

CREATE TABLE frames (
  id integer PRIMARY KEY AUTOINCREMENT,
  first_bowl integer,
  second_bowl integer,
  third_bowl integer,
  game_id integer
);