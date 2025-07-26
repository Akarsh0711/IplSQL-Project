DROP DATABASE IF EXISTS ipl;
CREATE DATABASE ipl;
USE ipl;

CREATE TABLE matches (
    id INT PRIMARY KEY,
    season VARCHAR(10),
    city VARCHAR(50),
    match_date DATE, -- changed from "date"
    match_type VARCHAR(30),
    player_of_match VARCHAR(50),
    venue VARCHAR(100),
    team1 VARCHAR(50),
    team2 VARCHAR(50),
    toss_winner VARCHAR(50),
    toss_decision VARCHAR(10),
    winner VARCHAR(50),
    result VARCHAR(20),
    result_margin VARCHAR(10),
    target_runs INT,
    target_overs FLOAT,
    super_over VARCHAR(5),
    method VARCHAR(50),
    umpire1 VARCHAR(50),
    umpire2 VARCHAR(50)
);

