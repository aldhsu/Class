CREATE TABLE plants (
  id integer PRIMARY KEY AUTOINCREMENT,
  name text,
  image text
);

ALTER TABLE butterflies ADD plant_id integer;