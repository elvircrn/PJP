 BEGIN TRANSACTION;
    CREATE TABLE t1 (rednibroj INTEGER  PRIMARY KEY,
        ime TEXT,
        ro�en double);
    INSERT INTO "t1" VALUES(1, 'Tin Ujevi�', 1891);
    INSERT INTO "t1" VALUES(2, 'Aleksa �anti�',1868);
    INSERT INTO "t1" VALUES(3, 'Musa �azim �ati�',1878);
    COMMIT;
    SELECT * FROM T1;
