-- Create a new database named 'ipl'
CREATE DATABASE ipl;

-- Switch to using the 'ipl' database so we can work in it
USE ipl;
-- create  the match table
CREATE TABLE matches (
    id INT PRIMARY KEY,                    -- Unique match ID
    season VARCHAR(10),                    -- Season (year)
    city VARCHAR(50),                      -- City where the match was played
    date DATE,                             -- Match date
    team1 VARCHAR(50),                     -- Team 1
    team2 VARCHAR(50),                     -- Team 2
    toss_winner VARCHAR(50),              -- Toss-winning team
    toss_decision VARCHAR(10),            -- Bat or field
    result VARCHAR(20),                    -- Result type
    winner VARCHAR(50),                    -- Winning team
    venue VARCHAR(100)                     -- Match venue
);