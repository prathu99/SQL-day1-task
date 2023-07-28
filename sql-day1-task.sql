-- Online SQL Editor to Run SQL Online.
-- Use the editor to create new tables, insert data and all other SQL operations.

CREATE TABLE Movies (Movies_id INTEGER PRIMARY KEY, Name TEXT, Year INTEGER)

INSERT INTO Movies VALUES (001, "Mission Impossible - Dead Reckoning: Part One", 2023);
INSERT INTO Movies VALUES (002, "The Flash", 2023);
INSERT INTO Movies VALUES (003, "Pathan", 2023);
INSERT INTO Movies VALUES (004, "Black Adam", 2023);
INSERT INTO Movies VALUES (005, "Fast X", 2023);

-- Media Table

CREATE TABLE Media (Media_id INTEGER, Poster TEXT, Trailer TEXT)

INSERT INTO Media VALUES (001, "https://upload.wikimedia.org/wikipedia/en/e/ed/Mission-_Impossible_%E2%80%93_Dead_Reckoning_Part_One_poster.jpg", "https://www.youtube.com/watch?v=avz06PDqDbM&pp=ygUcbWlzc2lvbiBpbXBvc3NpYmxlIDcgdHJhaWxlcg%3D%3D");

INSERT INTO Media VALUES (002, "https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg", "https://www.youtube.com/watch?v=hebWYacbdvc&pp=ygURdGhlIGZsYXNoIHRyYWlsZXI%3D");

INSERT INTO Media VALUES (003, "https://upload.wikimedia.org/wikipedia/en/c/c3/Pathaan_film_poster.jpg", "https://www.youtube.com/watch?v=vqu4z34wENw&pp=ygUOcGF0aGFuIHRyYWlsZXI%3D");

INSERT INTO Media VALUES (004, "https://upload.wikimedia.org/wikipedia/en/a/a9/Black_Adam_%28film%29_poster.jpg",
"https://www.youtube.com/watch?v=X0tOpBuYasI&pp=ygUSYmxhY2sgYWRhbSB0cmFpbGVy");

INSERT INTO Media VALUES (005, "https://upload.wikimedia.org/wikipedia/en/f/f2/Fast_X_poster.jpg", "https://www.youtube.com/watch?v=32RAq6JzY-w&pp=ygUOZmFzdCB4IHRyYWlsZXI%3D");

SELECT * FROM Movies INNER JOIN Media ON Movies_id = Media_id;

Creating artists table;

CREATE TABLE Artists(Artist TEXT, Role TEXT, M_id INTEGER);

INSERT INTO Artists VALUES('Tom Cruise','Lead',001);
INSERT INTO Artists VALUES('Hayley Atwell','Supporting',001);
INSERT INTO Artists VALUES('Ezra Miller','Lead',002);
INSERT INTO Artists VALUES('Andrés Muschietti','Director',002);
INSERT INTO Artists VALUES('SRK','Lead',003);
INSERT INTO Artists VALUES('Deepika Padukone','Lead',003);
INSERT INTO Artists VALUES('The Rock','Lead',004);
INSERT INTO Artists VALUES('Louis Leterrie','Director',005);
INSERT INTO Artists VALUES('Vin Diesel','Lead',005);

SELECT * FROM Movies inner JOIN Artists ON Movies_id=M_id;

Creating genre table;

CREATE TABLE Genre(Genre TEXT, Genre_id INTEGER);

INSERT INTO Genre VALUES('Action', 001);
INSERT INTO Genre VALUES('Drama',001);
INSERT INTO Genre VALUES('Superhero',002);
INSERT INTO Genre VALUES('Drama',002);
INSERT INTO Genre VALUES('Action',003);
INSERT INTO Genre VALUES('Superhero',004);
INSERT INTO Genre VALUES('Comedy',004);
INSERT INTO Genre VALUES('Action',005);

SELECT * FROM Movies inner JOIN Genre ON Movies_id=Genre_id;

Creating review table;

CREATE TABLE Review(Rating FLOAT, Review_id INTEGER);

Inserting review data;

INSERT INTO Review VALUES(7.9,002);
INSERT INTO Review VALUES(7.6,003);
INSERT INTO Review VALUES(6.9,004);
INSERT INTO Review VALUES(7.8,001);
INSERT INTO Review VALUES(7.8,005);

SELECT * FROM Movies INNER JOIN Review on Movies_id=Review_id;