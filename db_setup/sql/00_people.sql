CREATE TABLE public.People (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "surname" VARCHAR(255) NOT NULL,
    "phone" VARCHAR(12),
    "fiscalcode" VARCHAR(16) NOT NULL UNIQUE,
    "registrationDate" TIMESTAMP DEFAULT now(),
    PRIMARY KEY ("id")
);