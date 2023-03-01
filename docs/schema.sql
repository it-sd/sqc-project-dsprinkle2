-- Drop tables if they exist
DROP TABLE IF EXISTS statistics;
DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS games;
DROP TABLE IF EXISTS players;

-- Create tables
CREATE TABLE players (
  player_id SERIAL PRIMARY KEY,
  username TEXT NOT NULL,
  password TEXT NOT NULL,
  choices TEXT[]
);

CREATE TABLE statistics (
  player_id INTEGER REFERENCES players(player_id),
  choice_1_count INTEGER NOT NULL DEFAULT 0,
  choice_1_text TEXT,
  choice_2_count INTEGER NOT NULL DEFAULT 0,
  choice_2_text TEXT,
  deaths INTEGER NOT NULL DEFAULT 0,
  endings_reached INTEGER NOT NULL DEFAULT 0
);

CREATE TABLE items (
  item_id SERIAL PRIMARY KEY,
  player_id FOREIGN KEY,
  item_name TEXT NOT NULL,
  item_type TEXT NOT NULL,
  item_description TEXT
);

CREATE TABLE games (
  game_id SERIAL PRIMARY KEY,
  player_Id FOREIGN KEY,
  story TEXT NOT NULL,
  choice_1_text TEXT NOT NULL,
  choice_1_result TEXT NOT NULL,
  choice_2_text TEXT NOT NULL,
  choice_2_result_text TEXT NOT NULL
);
