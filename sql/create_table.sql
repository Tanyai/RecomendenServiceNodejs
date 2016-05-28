CREATE TABLE movie (
    id serial PRIMARY KEY,
    title text,
    duration integer,
    year integer,
    poster text,
    director text,
    category text,
    rank real,
    position integer
);
CREATE TABLE users (
    id serial PRIMARY KEY,
    name text CONSTRAINT name_unique UNIQUE
);
CREATE TABLE comment (
    id serial PRIMARY KEY,
    user_id integer NOT NULL REFERENCES users(id),
    movie_id integer NOT NULL REFERENCES movie(id),
    text text
);
CREATE TABLE likes (
    user_id integer NOT NULL REFERENCES users(id),
    movie_id integer NOT NULL REFERENCES movie(id),
    rating real,
    PRIMARY KEY(movie_id, user_id)
)