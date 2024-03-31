ALTER TABLE musician
DROP COLUMN role;


ALTER TABLE musician
DROP COLUMN bandName;


DROP TABLE band;


ALTER TABLE musician
RENAME COLUMN musicianName to singerName ;


RENAME TABLE musician TO singer;
