# IPL SQL Data Analysis Project

This project performs structured SQL analysis on Indian Premier League (IPL) match data. The dataset is sourced from Kaggle and contains details about each IPL match, including teams, venues, winners, and more.

---

## 📁 Dataset Source

- [Kaggle IPL Dataset](https://www.kaggle.com/datasets)
- File used: `matches.csv`

---

## 🛠 Tools Used

- MySQL / MySQL Workbench
- SQL Queries
- CSV Import Wizard

---

## 📋 Project Files

| File                 | Description                              |
|----------------------|------------------------------------------|
| `create_tables.sql`  | SQL script to create the IPL database and `matches` table |
| `project.sql`        | All analysis queries with clear comments |
| `matches.csv`        | Dataset file (Kaggle) placed under `/data` |
| `README.md`          | Project documentation |

---

## 🔎 SQL Analysis Performed

1. Total number of matches played
2. Matches won by each team
3. Matches played at each venue
4. Matches played per season
5. Season-wise wins by each team

---

## 💡 Sample Query

```sql
-- Find total number of matches played
SELECT COUNT(*) AS total_matches
FROM matches;
