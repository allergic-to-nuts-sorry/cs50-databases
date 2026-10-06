SELECT "first_name", "last_name"
FROM "players"
WHERE "id" IN (
    SELECT "salaries"."player_id"
    FROM "salaries"
    JOIN "performances"
        ON "salaries"."player_id" = "performances"."player_id"
       AND "salaries"."year" = "performances"."year"
    WHERE "salaries"."year" = 2001
      AND "performances"."H" > 0
    ORDER BY ("salaries"."salary" / "performances"."H") ASC
    LIMIT 10
)
AND "id" IN (
    SELECT "salaries"."player_id"
    FROM "salaries"
    JOIN "performances"
        ON "salaries"."player_id" = "performances"."player_id"
       AND "salaries"."year" = "performances"."year"
    WHERE "salaries"."year" = 2001
      AND "performances"."RBI" > 0
    ORDER BY ("salaries"."salary" / "performances"."RBI") ASC
    LIMIT 10
)
ORDER BY "id";
