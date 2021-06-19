CREATE TABLE publisher(
    id integer PRIMARY KEY,
    name TEXT,
    country TEXT
);

CREATE TABLE books(
    id integer PRIMARY KEY,
    title TEXT,
    publisher integer REFERENCES publisher(id)
);

CREATE TABLE subjects(
    id integer PRIMARY KEY,
    name TEXT
);

CREATE TABLE books_subjects(
    book integer REFERENCES books(id),
    subject integer REFERENCES subjects(id)
);