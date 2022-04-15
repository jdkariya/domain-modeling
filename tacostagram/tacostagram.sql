DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS post;
DROP TABLE IF EXISTS comment;
DROP TABLE IF EXISTS like;
DROP TABLE IF EXISTS following;

CREATE TABLE User (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  location TEXT
);

CREATE TABLE Post (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  image_file TEXT,
  created_at TEXT,
  user_id INTEGER
);

CREATE TABLE Comment (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  post_id INTEGER,
  user_id INTEGER,
  comment TEXT
);

CREATE TABLE Like (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  post_id INTEGER,
  user_id INTEGER,
  created_at TEXT
);

CREATE TABLE Following (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  follower_user_id INTEGER,
  followed_user_id INTEGER
);