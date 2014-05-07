-- "schema" is the SQL code required to 'build' your database tables, etc.

CREATE TABLE posts
(
  id  serial NOT NULL primary key,
  word_1 varchar(255),
  word_1_url varchar(255),
  word_2 varchar(255),
  word_2_url varchar(255),
  word_3 varchar(255),
  word_3_url varchar(255),
  word_4 varchar(255),
  word_4_url varchar(255),
  word_5 varchar(255),
  word_5_url varchar(255)
);
