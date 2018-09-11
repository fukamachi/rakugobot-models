CREATE TABLE "place" (
    "id" BIGSERIAL NOT NULL PRIMARY KEY,
    "name" VARCHAR(64) NOT NULL,
    "address" VARCHAR(256) NOT NULL,
    "latitude" FLOAT8,
    "longitude" FLOAT8,
    "created_at" TIMESTAMPTZ,
    "updated_at" TIMESTAMPTZ
);
CREATE UNIQUE INDEX "unique_place_name_address" ON "place" ("name", "address");
CREATE TABLE "schedule" (
    "id" BIGSERIAL NOT NULL PRIMARY KEY,
    "title" VARCHAR(256) NOT NULL,
    "start_date" DATE NOT NULL,
    "end_date" DATE NOT NULL,
    "start_time" TIME NOT NULL,
    "end_time" TIME NOT NULL,
    "fetched_url" VARCHAR(256) NOT NULL,
    "place_id" BIGINT NOT NULL,
    "created_at" TIMESTAMPTZ,
    "updated_at" TIMESTAMPTZ
);
CREATE TABLE "performer" (
    "id" BIGSERIAL NOT NULL PRIMARY KEY,
    "name" VARCHAR(128) NOT NULL,
    "furigana" VARCHAR(128) NOT NULL,
    "org" VARCHAR(16) NOT NULL,
    "fetched_url" VARCHAR(256) NOT NULL,
    "created_at" TIMESTAMPTZ,
    "updated_at" TIMESTAMPTZ
);
CREATE UNIQUE INDEX "unique_performer_name_org" ON "performer" ("name", "org");
CREATE UNIQUE INDEX "unique_performer_fetched_url" ON "performer" ("fetched_url");
CREATE TABLE "schedule_performer" (
    "schedule_id" BIGINT NOT NULL,
    "performer_id" BIGINT NOT NULL,
    "created_at" TIMESTAMPTZ,
    "updated_at" TIMESTAMPTZ,
    PRIMARY KEY ("schedule_id", "performer_id")
);
