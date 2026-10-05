-- Which public school districts achieve a 100% graduation rate while maintaining a per-pupil expenditure below the state average?
SELECT
    "districts"."name" AS "district_name",
    "expenditures"."per_pupil_expenditure",
    "graduation_rates"."graduated"
FROM "districts"
JOIN "schools" ON "districts"."id" = "schools"."district_id"
JOIN "expenditures" ON "districts"."id" = "expenditures"."district_id"
JOIN "graduation_rates" ON "schools"."id" = "graduation_rates"."school_id"
WHERE "districts"."type" = 'Public School District'
  AND "graduation_rates"."graduated" = 100
  AND "expenditures"."per_pupil_expenditure" < (
      SELECT AVG("per_pupil_expenditure")
      FROM "expenditures"
  )
ORDER BY "expenditures"."per_pupil_expenditure" ASC;
