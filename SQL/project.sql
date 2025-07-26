-- =====================================================
-- IPL Project SQL Analysis Queries
-- Database: ipl
-- Table: matches
-- Purpose: Perform analytical queries on IPL match data
-- =====================================================

USE ipl;

-- ===========================================
-- QUERY 1: Total number of matches played
-- ===========================================

/*
💡 Explanation:
Each row in the 'matches' table represents a single IPL match. To find the total number of matches played across all seasons, we simply count the number of rows in the table.
*/

SELECT COUNT(*) AS total_matches
FROM matches;

-- ===========================================
-- QUERY 2: Find total number of matches won by each team
-- Shows how many matches each team has won in IPL history
-- ===========================================

SELECT winner, COUNT(*) AS total_wins       -- Show team name and how many matches they won
FROM matches
WHERE winner IS NOT NULL                    -- Skip matches where no team won (like tie or no result)
GROUP BY winner                              -- Group rows by team name to count wins per team
ORDER BY total_wins DESC;                   -- Sort teams by most wins first

-- ===========================================
-- QUERY 3: Find total number of matches played at each venue
-- Helps identify which stadiums hosted the most IPL matches
-- ===========================================

SELECT venue, COUNT(*) AS total_matches     -- Show venue name and how many matches were played there
FROM matches
GROUP BY venue                              -- Group rows by venue to count matches at each stadium
ORDER BY total_matches DESC;                -- Sort venues by highest number of matches first

-- ===========================================
-- QUERY 4: Find total number of matches played per season
-- Shows how many matches were played in each IPL season
-- Useful to see how the tournament has grown over time
-- ===========================================

SELECT season, COUNT(*) AS total_matches    -- Show season and number of matches played that year
FROM matches
GROUP BY season                             -- Group rows by season
ORDER BY total_matches ASC;                 -- Sort seasons in chronological order

-- ============================================================
-- QUERY 5: Find total number of matches won by each team season-wise
-- Shows how each team performed in different IPL seasons
-- Helps compare performance of teams over the years
-- ============================================================

SELECT season, winner, COUNT(*) AS winning_matches   -- Show season, team name, and number of wins
FROM matches
WHERE winner IS NOT NULL                             -- Exclude matches with no winner
GROUP BY season, winner                              -- Group by both season and team
ORDER BY season, winning_matches DESC;               -- Sort by season, then most wins in that season

