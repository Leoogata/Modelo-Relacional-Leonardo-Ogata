-- Configuração inicial
SET search_path TO public;

-- Criação da tabela 'users'
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  email VARCHAR(50),
  new_field INTEGER
);

-- Criação da tabela 'general_forms'
DROP TABLE IF EXISTS general_forms;
CREATE TABLE general_forms (
  id SERIAL PRIMARY KEY,
  age INTEGER,
  gender VARCHAR(20),
  education VARCHAR(30),
  type_of_housing VARCHAR(50),
  family_constitution VARCHAR(50),
  income NUMERIC,
  people_in_house INTEGER,
  address VARCHAR(30),
  id_users INTEGER,
  FOREIGN KEY (id_users) REFERENCES users(id)
);

-- Criação da tabela 'user_forms'
DROP TABLE IF EXISTS user_forms;
CREATE TABLE user_forms (
  id SERIAL PRIMARY KEY,
  user_forms INTEGER,
  id_users INTEGER,
  FOREIGN KEY (id_users) REFERENCES users(id)
);

-- Criação da tabela 'have_forms'
DROP TABLE IF EXISTS have_forms;
CREATE TABLE have_forms (
  id SERIAL PRIMARY KEY,
  dog_name VARCHAR(30),
  dog_gender VARCHAR(20),
  belongs_to VARCHAR(20),
  castrated VARCHAR(30),
  first_dog VARCHAR(30),
  other_pets VARCHAR(10),
  dog_age INTEGER,
  breed INTEGER,
  where_got INTEGER,
  paid VARCHAR(20),
  dog_age_arrived INTEGER,
  dog_personality TEXT,
  why_have VARCHAR(80),
  add_characteristics VARCHAR(50),
  decision VARCHAR(30),
  dog_couldnt_keep VARCHAR(30),
  vet VARCHAR(10),
  about VARCHAR(30),
  id_users INTEGER,
  FOREIGN KEY (id_users) REFERENCES users(id)
);

-- Criação da tabela 'had_forms'
DROP TABLE IF EXISTS had_forms;
CREATE TABLE had_forms (
  id SERIAL PRIMARY KEY,
  dog_name VARCHAR(30),
  belonged VARCHAR(30),
  dog_personality TEXT,
  dog_gender VARCHAR(10),
  time_with INTEGER,
  first_dog VARCHAR(10),
  other_pets INTEGER,
  age_got INTEGER,
  castrated INTEGER,
  when_castrated INTEGER,
  breed VARCHAR(10),
  came_from VARCHAR(30),
  paid NUMERIC,
  when_got VARCHAR(30),
  add_characteristics VARCHAR(50),
  decision VARCHAR(30),
  most_like VARCHAR(30),
  most_dislike VARCHAR(30),
  vet VARCHAR(20),
  stopped_living VARCHAR(15),
  other_dog VARCHAR(10),
  id_users INTEGER,
  FOREIGN KEY (id_users) REFERENCES users(id)
);

-- Criação da tabela 'want_have'
DROP TABLE IF EXISTS want_have;
CREATE TABLE want_have (
  id SERIAL PRIMARY KEY,
  dog_characteristics VARCHAR(50),
  dog_color VARCHAR(30),
  dog_gender VARCHAR(10),
  breed VARCHAR(30),
  why_have VARCHAR(30),
  when_have VARCHAR(100),
  dog_personality VARCHAR(100),
  pesquisou VARCHAR(20),
  id_users INTEGER,
  FOREIGN KEY (id_users) REFERENCES users(id)
);

-- Criação da tabela 'null_forms'
DROP TABLE IF EXISTS null_forms;
CREATE TABLE null_forms (
  id SERIAL PRIMARY KEY,
  dont_want VARCHAR(150),
  id_users INTEGER,
  FOREIGN KEY (id_users) REFERENCES users(id)
);
