SELECT ROUND(AVG("height"),2) AS "Average_Height" , ROUND(AVG("weight"),2) AS "Average_Weight" FROM "players"
WHERE "debut" >= '2000-01-01';
