sqlite3 pet_database.db = creating pet_database.db File

sqlite3 test_sqlite.db = creating test_sqlite.db File

sqlite> = Command prompt for SQlite3 inside the table

sqlite> create table test_table(id); = Creating table named "test_table" with id

sqlite> .tables = To all tables in the perticular File

CREATE TABLE cats (id INTEGER PRIMARY KEY, name TEXT, age INTEGER); = Creating table "cats" with columns

.schema = To see the table structure

DROP TABLE cats; = To Delete the Table "cats"

sqlite3 pets_database.db < 01_create_cats_table.sql = Putting contents from 01_create_cats_table.sql to sqlite3 pets_database.db

sqlite3 pets_database.db < 00_command_lines.sql = Putting contents from 00_command_lines.sql.sql to sqlite3 pets_database.db

ALTER TABLE cats ADD COLUMN breed TEXT; = Adding column breed to table cats

INSERT INTO cats (name, age, breed) VALUES ('Maru', 3, 'Scottish Fold'); = Inserting new entry to the table cats

SELECT [names of columns we are going to select] FROM [table we are selecting from];

SELECT id, name, age, breed FROM cats;

SELECT * FROM cats; = Select (see) everything in the cats table

SELECT name FROM cats; = Select (see) only the names in cats table.

SELECT name, age FROM cats;

SELECT * FROM [table name] WHERE [column name] = [some value];

SELECT * FROM cats WHERE age < 2;

UPDATE [table name] SET [column name] = [new value] WHERE [column name] = [value];

UPDATE cats SET name = "Hana" WHERE name = "Hannah";

DELETE FROM [table name] WHERE [column name] = [value];

DELETE FROM cats WHERE id = 3;

.headers on = output the name of each column
.mode column = now we are in column mode, enabling us to run the next two .width commands
.width auto = adjusts and normalizes column width

.width NUM1, NUM2 = customize column width

SELECT column_name FROM table_name ORDER BY column_name ASC|DESC; = Oredring in ascending or descending order

SELECT * FROM cats1 ORDER BY age; = Ordering by ascending order

SELECT * FROM cats1 ORDER BY age DESC; = Ordering by descending order

SELECT * FROM cats1 ORDER BY age DESC LIMIT 1; = gets the first in the list

SELECT * FROM cats1 ORDER BY age DESC LIMIT 2;

SELECT column_name(s) FROM table_name WHERE column_name BETWEEN value1 AND value2;

SELECT name FROM cats1 WHERE age BETWEEN 1 AND 3;

INSERT INTO cats1 (name, age, breed) VALUES (NULL, NULL, "Tabby");

SELECT * FROM cats WHERE name IS NULL; = Getting the nameless cat

 "SELECT COUNT([column name]) FROM [table name] WHERE [column name] = [value]"

SELECT COUNT(owner_id) FROM cats1 WHERE owner_id = 1;

SELECT breed, COUNT(breed) FROM cats1 GROUP BY breed;

SELECT breed, owner_id, COUNT(breed) FROM cats1 GROUP BY breed, owner_id;

SELECT name FROM cats;

SELECT cats1.name FROM cats1;

SELECT cats.name, cats1.name, dogs.name FROM cats, cats1, dogs; = Does not show properly

CREATE TABLE cats2 (id INTEGER PRIMARY KEY, name TEXT, age INTEGER, breed TEXT, net_worth INTEGER);

CREATE TABLE cats_owners (cat_id INTEGER, owner_id INTEGER);

SELECT * FROM cats2 WHERE net_worth > 0;

SELECT * FROM cats2 ORDER BY(net_worth) DESC; = SELECT * FROM cats2 ORDER BY net_worth DESC;

SELECT * FROM cats2 ORDER BY(net_worth) DESC LIMIT 1;

SELECT column_name, aggregate_function(column_name)
FROM table_name
WHERE column_name operator value
GROUP BY column_name;

SELECT owners.name, SUM(cats2.net_worth)
FROM owners
INNER JOIN cats_owners
ON owners.id = cats_owners.owner_id
JOIN cats2 ON cats_owners.cat_id = cats2.id
GROUP BY owners.name;


INNER JOIN WORKS AS FOLLOWS:
SELECT a1, a2, b1, b2 = (Columns in Table A & B)
FROM A = Table A
INNER JOIN B on B.f = A.f (f column is common in both tables)


