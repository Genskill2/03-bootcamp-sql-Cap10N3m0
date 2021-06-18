CREATE TABLE publisher(
    id serial PRIMARY KEY,
    name TEXT,
    country TEXT
);

CREATE TABLE books(
    id serial PRIMARY KEY,
    title TEXT,
    publisher serial REFERENCES publisher(id)
);

CREATE TABLE subjects(
    id serial PRIMARY KEY,
    name TEXT
);

CREATE TABLE books_subjects(
    book serial REFERENCES books(id),
    subjects serial REFERENCES subjects(id)
);