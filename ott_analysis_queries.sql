-- OTT Streaming Content Trend Analysis
-- SQL examples for SQLite / MySQL with small adjustments as needed.
-- Load the CSV into a table named ott_titles first.

CREATE TABLE ott_titles (
    show_id VARCHAR(20) PRIMARY KEY,
    platform VARCHAR(50),
    type VARCHAR(20),
    title VARCHAR(255),
    country VARCHAR(100),
    release_year INTEGER,
    date_added VARCHAR(40),
    rating VARCHAR(20),
    duration VARCHAR(30),
    genre VARCHAR(60)
);

-- 1. Total titles by platform
SELECT platform, COUNT(*) AS title_count
FROM ott_titles GROUP BY platform ORDER BY title_count DESC;

-- 2. Movies vs TV shows
SELECT type, COUNT(*) AS title_count
FROM ott_titles GROUP BY type ORDER BY title_count DESC;

-- 3. Content type split for each platform
SELECT platform, type, COUNT(*) AS title_count
FROM ott_titles GROUP BY platform, type ORDER BY platform, title_count DESC;

-- 4. Most common genres
SELECT genre, COUNT(*) AS title_count
FROM ott_titles GROUP BY genre ORDER BY title_count DESC;

-- 5. Titles by release year
SELECT release_year, COUNT(*) AS title_count
FROM ott_titles GROUP BY release_year ORDER BY release_year;

-- 6. Top countries represented
SELECT country, COUNT(*) AS title_count
FROM ott_titles GROUP BY country ORDER BY title_count DESC LIMIT 10;

-- 7. Ratings breakdown
SELECT rating, COUNT(*) AS title_count
FROM ott_titles GROUP BY rating ORDER BY title_count DESC;

-- 8. Average release year by platform
SELECT platform, ROUND(AVG(release_year), 1) AS average_release_year
FROM ott_titles GROUP BY platform ORDER BY average_release_year DESC;

-- 9. Platform and genre matrix
SELECT platform, genre, COUNT(*) AS title_count
FROM ott_titles GROUP BY platform, genre ORDER BY platform, title_count DESC;

-- 10. Newest release years in the dataset
SELECT title, platform, type, release_year
FROM ott_titles ORDER BY release_year DESC LIMIT 15;
