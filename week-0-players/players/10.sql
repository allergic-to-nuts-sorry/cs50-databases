SELECT "first_name", "last_name", "height" AS "Top 30 Player Heights" FROM "players" WHERE "height" > 75
ORDER BY "height" DESC LIMIT 30;
