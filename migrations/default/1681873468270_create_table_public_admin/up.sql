CREATE TABLE "public"."admin" ("id" uuid DEFAULT gen_random_uuid(), "username" text, "password" text, PRIMARY KEY ("id") , UNIQUE ("id"), UNIQUE ("username"));
CREATE EXTENSION IF NOT EXISTS pgcrypto;
