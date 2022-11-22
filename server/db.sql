CREATE DATABASE jwttutorial;

-- download extension
-- create extension if not exists "uuid-ossp";
CREATE TABLE users(
  user_id uuid DEFAULT uuid_generate_v4(),
  user_name VARCHAR(255) NOT NULL,
  user_email VARCHAR(255) NOT NULL UNIQUE,
  user_password VARCHAR(255) NOT NULL,
  PRIMARY KEY (user_id)
);


CREATE TABLE todos(
  todo_id SERIAL,
  user_id UUID,
  description VARCHAR(255),
  PRIMARY KEY(todo_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);
-- insert fake users

INSERT INTO users (user_name, user_email, user_password )
VALUES ('Hope', 'hopevaughnwarren@gmail.com', 'hvw1980');

INSERT INTO users (user_name, user_email, user_password )
VALUES ('Ed', 'ed@gmail.com', 'ed123');

INSERT INTO todos(user_id, description) VALUES ('fccd1e68-35c4-4e6f-954a-98b521d96760', 'clean room');
INSERT INTO todos(user_id, description) VALUES ('00a7fc49-53ed-4020-89c2-5a64485520d3', 'take out trash');