CREATE TABLE person (
  id integer PRIMARY_KEY,
  first_name TEXT,
  last_Name TEXT,
  age integer
);

CREATE TABLE pet (
  id integer PRIMARY_KEY,
  name text,
  breed text,
  age integer,
  dead integer
);

CREATE TABLE person_pet (
  person_id integer,
  pet_id integer
);