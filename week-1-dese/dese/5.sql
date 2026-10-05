SELECT "city", COUNT(*) AS "public_schools"
FROM "schools"
WHERE "type" = "Public School"
GROUP BY "city"
HAVING "public_schools" <= 3
ORDER BY "public_schools" DESC, "city";
