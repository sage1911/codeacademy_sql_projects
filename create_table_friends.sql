CREATE TABLE friends (
  id INTEGER,
  name TEXT,
  birthday DATE
);

INSERT INTO friends ( id, name, birthday)
VALUES ( '1', 'Ororo Munroe', 'May 30th, 1940');

SELECT * FROM friends;

--Insert name
BEGIN TRANSACTION;

INSERT INTO friends ( id, name, birthday)
VALUES ( '2', 'Hojlund', 'Sep 17th, 1997');

INSERT INTO friends ( id, name, birthday)
VALUES ( '3', 'Bruno', 'Jun 17th, 1991');

COMMIT;

UPDATE friends
SET name = 'Storm'
WHERE name = 'Ororo Munroe';

ALTER TABLE friends
ADD email TEXT;

SELECT * FROM friends;

UPDATE friends
SET email = 'storm@academy.com'
WHERE name = 'Storm';

UPDATE friends
SET email = 'hojjlund@manutd.com'
WHERE name = 'Hojlund';

UPDATE friends
SET email = 'bruno@manutd.com'
WHERE name = 'Bruno';

SELECT * FROM friends;

DELETE FROM friends
WHERE name = 'Storm';

SELECT * FROM friends;
