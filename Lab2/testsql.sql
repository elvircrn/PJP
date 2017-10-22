 BEGIN TRANSACTION;
    CREATE TABLE t1 (rednibroj INTEGER  PRIMARY KEY,
        ime TEXT,
        roðen double);
    INSERT INTO "t1" VALUES(1, 'Tin Ujeviæ', 1891);
    INSERT INTO "t1" VALUES(2, 'Aleksa Šantiæ',1868);
    INSERT INTO "t1" VALUES(3, 'Musa Æazim Æatiæ',1878);
    COMMIT;
    SELECT * FROM T1;
