PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
INSERT INTO "schema_migrations" VALUES('20170331045923');
INSERT INTO "schema_migrations" VALUES('20170418070645');
INSERT INTO "schema_migrations" VALUES('20170609073530');
INSERT INTO "schema_migrations" VALUES('20170612014736');
CREATE TABLE "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "ar_internal_metadata" VALUES('environment','development','2017-03-31 05:21:00.324397','2017-03-31 05:21:00.324397');
CREATE TABLE "posts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "content" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "posts" VALUES(1,'I wonder what I should read next...','2017-03-31 05:24:15.529063','2017-03-31 05:24:15.529063');
INSERT INTO "posts" VALUES(2,'Lunch was delicious today!','2017-03-31 05:24:32.004378','2017-03-31 05:24:32.004378');
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "email" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "image_name" varchar, "password" varchar);
INSERT INTO "users" VALUES(1,'Ken the Ninja','ken@progate.com','2017-04-18 08:06:52.739295','2017-04-18 08:06:52.739295','default_user.jpg', 'kentheninja');
INSERT INTO "users" VALUES(2,'Master Wooly','master@progate.com','2017-04-18 08:06:52.739295','2017-04-18 08:06:52.739295','2.jpg', 'masterwooly');
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('posts',2);
INSERT INTO "sqlite_sequence" VALUES('users',2);
COMMIT;
