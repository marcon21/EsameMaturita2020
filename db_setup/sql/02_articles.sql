CREATE TABLE public.Articles (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "description" TEXT,
    "price" NUMERIC(12,2) NOT NULL,

    PRIMARY KEY ("id")
);