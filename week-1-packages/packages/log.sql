
-- *** The Lost Letter ***
SELECT "type", "address" FROM "addresses" WHERE "id" = (
    SELECT "to_address_id" FROM "packages" WHERE "from_adress_id" = (
        SELECT "id" FROM "addresses" WHERE "address" = '900 Somerville Avenue'
    )
);
-- *** The Devious Delivery ***
SELECT "contents" FROM "packages" WHERE "from_address_id" IS NULL;
SELECT "address", "type" FROM "addresses" WHERE "id" = (
    SELECT "to_address_id" FROM "packages" WHERE "from_address_id" IS NULL
);
-- *** The Forgotten Gift ***
SELECT "id", "contents" FROM "packages" WHERE "from_address_id" = (
    SELECT "id" FROM "addresses" WHERE "address" = '109 Tileston Street'
);
SELECT * FROM "scans" WHERE "package_id" = (
    SELECT "id" FROM "packages" WHERE "from_address_id" = (
        SELECT "id" FROM "addresses" WHERE "address" = '109 Tileston Street'
    )
);
SELECT "name" FROM "drivers" WHERE "id" = (
    SELECT "driver_id" FROM "scans" WHERE "package_id" = (
        SELECT "id" FROM "packages" WHERE "from_address_id" = (
            SELECT "id" FROM "addresses" WHERE "address" = '109 Tileston Street'
        )
    ) ORDER BY "timestamp" DESC LIMIT 1
);


