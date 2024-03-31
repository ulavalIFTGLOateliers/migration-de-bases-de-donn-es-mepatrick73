RENAME TABLE singer TO musician;

ALTER TABLE musician
RENAME COLUMN singerName to musicianName;

ALTER TABLE musician
ADD role varchar(50);

ALTER TABLE musician
ADD bandName varchar(50);

CREATE TABLE band (
    bandName varchar(50),
    creation YEAR,
    genre varchar(50),
    PRIMARY KEY(bandName)
);



INSERT INTO band VALUES ("Crazy Duo", 2015, "rock"), ("Luna", 2009, "classical"), ("Mysterio", 2019, "pop");

UPDATE musician
SET 
    role = CASE 
                WHEN musicianName = 'Alina' THEN 'vocals'
                WHEN musicianName = 'Mysterio' THEN 'guitar'
                WHEN musicianName = 'Rainbow' THEN 'percussion'
                WHEN musicianName = 'Luna' THEN 'piano'
           END,
    bandName = CASE 
                WHEN musicianName = 'Alina' THEN 'Crazy Duo'
                WHEN musicianName = 'Mysterio' THEN 'Mysterio'
                WHEN musicianName = 'Rainbow' THEN 'Crazy Duo'
                WHEN musicianName = 'Luna' THEN 'Luna'
              END;

-- INSERT INTO label VALUES ("World Music", 2002, "pop"), ("Dark Matter", 2015, "rock"), ("Four Seasons", 1999, "classical");
-- INSERT INTO album VALUES ("World of Mysteries", "Mysterio", 2019, "Dark Matter"), ("Second Mystery", "Mysterio", 2021, "World Music"), ("Concertos", "Luna", 2009, "Four Seasons");
