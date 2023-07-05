use scheam1;


select *
from data;


select  distinct  Certificate from data;


select distinct Genre from data;


SELECT DISTINCT
    Released_Year
FROM
    data
ORDER BY Released_Year;


SELECT 
    Genre
FROM
    data
WHERE
    Meta_score > 90 AND IMDB_Rating > 9;


SELECT 
    Meta_score
FROM
    data
WHERE
    Runtime > 200
ORDER BY Meta_score;


SELECT 
    Genre,
    MAX(IMDB_Rating),
    MIN(IMDB_Rating),
    MAX(Meta_score),
    MIN(Meta_score)
FROM
    data;


SELECT 
    Genre, Meta_score, No_of_Votes
FROM
    data
WHERE
    No_of_Votes > 1500000
LIMIT 10;


SELECT 
    Director
FROM
    data
WHERE
    Meta_score BETWEEN 90 AND 100;


SELECT DISTINCT
    Released_Year
FROM
    data
WHERE
    IMDB_Rating > 9;


SELECT 
    COUNT(*) Released_Year
FROM
    data
WHERE
    Meta_score < 50;

select Genre, count(*),max(Gross),min(Gross)
from data 
group by Genre
order by count(*);


select Director,max(Gross),min(Gross)
from data 
group by Director 
order by max(Gross);


SELECT DISTINCT
    Star1, MAX(Gross)
FROM
    data
GROUP BY Star1;


SELECT 
    Director, Star1, Star2, Star3, Star4, MAX(Gross)
FROM
    data
GROUP BY Director;

SELECT 
    Genre, MAX(No_of_Votes), MAX(Gross)
FROM
    data
GROUP BY Genre
ORDER BY MAX(Gross);

SELECT 
    IMDB_Rating,
    Genre,
    CASE
        WHEN IMDB_Rating > 9 THEN 'perfact'
        WHEN IMDB_Rating BETWEEN 8 AND 9 THEN 'very good'
        ELSE 'good'
    END
FROM
    data
WHERE
    Genre IS NOT NULL;

SELECT 
    Runtime,
    Certificate,
    CASE
        WHEN Runtime > 150 THEN 'Broing'
        WHEN Runtime BETWEEN 100 AND 150 THEN 'good'
        ELSE 'Exiting'
    END
FROM
    data
WHERE
    Runtime IS NOT NULL;


SELECT 
    Runtime, Genre
FROM
    data
GROUP BY Genre
ORDER BY runtime;

