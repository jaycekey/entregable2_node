CREATE TABLE "users" (
  "user_id" SERIAL PRIMARY KEY,
  "name" varchar,
  "age" int,
  "email" varchar NOT NULL,
  "password" varchar NOT NULL
);

CREATE TABLE "posts" (
  "id" SERIAL,
  "author_id" SERIAL,
  "author" varchar,
  "title" varchar,
  "description" varchar,
  "context" varchar,
  "category" varchar,
  PRIMARY KEY ("id", "author_id")
);

CREATE TABLE "comments" (
  "id" SERIAL PRIMARY KEY,
  "comment" varchar
);

CREATE TABLE "categories" (
  "category_name" varchar
);

ALTER TABLE "posts" ADD FOREIGN KEY ("author_id") REFERENCES "user" ("user_id");
ALTER TABLE "posts" ADD FOREIGN KEY ("id") REFERENCES "comments" ("id");

insert into users (name, age, email, password) values
('Jose', 21, 'jose@gmail.com', '12345678'),
('Michelle', 30, 'michelle@gmail.com', '12345678'),
('Bryan', 18, 'bryan@gmail.com', '12345678'),
('Ronaldo', 35, 'ronaldo@gmail.com', '12345678'),
('Paola', 39, 'pao@gmail.com', '12345678');

insert into posts (author, title, description, context, category) values
('Jose', 'My favorites programming languages', 'A list of my favorites programming languages', 'Python, JS, Java, C#', 'development'),
('Ronaldo', 'Frontend portafolio ideas', 'A list of cool projects for frontend devs', 'Calculator, Wiki of some serie, chat_app, any table game', 'frontend_development');

insert into categories (category_name) values
('frontend_development'),
('development'),
('health'),
('travels'),
('videogames');

insert into "comments" (comment) values
('This is wonderful'),
('Amazing!');