CREATE TABLE public.People (
    "fiscalcode" VARCHAR(16) NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "surname" VARCHAR(255) NOT NULL,
    "phone" VARCHAR(12),
    "registrationDate" TIMESTAMP DEFAULT now(),
    PRIMARY KEY ("fiscalcode")
);