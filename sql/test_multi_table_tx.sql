
DROP SCHEMA test1;
CREATE SCHEMA test1;
USE test1;

create table s (i int, t varchar(30), 
primary key (i)) engine = tapioca;


create table t (i int, t varchar(30), 
primary key (i)) engine = tapioca;

SET AUTOCOMMIT = 0;
BEGIN;

INSERT INTO s VALUES (117,'fdsafdsa');
INSERT INTO s VALUES (251,'fdsafdsa');

COMMIT;

BEGIN;
INSERT INTO s VALUES (17,'fdsafdsa');
INSERT INTO s VALUES (21,'fdsafdsa');

INSERT INTO t VALUES (137,'fdsafdsa');
INSERT INTO t VALUES (211,'fdsafdsa');
COMMIT;

-- client 2

SET AUTOCOMMIT = 0;
BEGIN;

SELECT * FROM s;

INSERT INTO s VALUES (117,'fdsafdsa');
INSERT INTO s VALUES (251,'fdsafdsa');


INSERT INTO s VALUES (117,'fdsafdsa');
INSERT INTO s VALUES (251,'fdsafdsa');