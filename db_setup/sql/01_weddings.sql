CREATE TABLE public.Weddings (
    "id" SERIAL NOT NULL,
    "partner1" VARCHAR(16) NOT NULL,
    "partner2" VARCHAR(16) NOT NULL,
    "date" TIMESTAMP DEFAULT now(),

    PRIMARY KEY ("id"),
    FOREIGN KEY ("partner1") REFERENCES public.People ("fiscalcode")
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY ("partner2") REFERENCES public.People ("fiscalcode")
        ON UPDATE CASCADE
        ON DELETE CASCADE
);