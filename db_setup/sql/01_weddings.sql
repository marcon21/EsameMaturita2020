CREATE TABLE public.Weddings (
    "id" SERIAL NOT NULL,
    "partner1" INT NOT NULL,
    "partner2" INT NOT NULL,

    PRIMARY KEY ("id"),
    FOREIGN KEY ("partner1") REFERENCES public.People ("id")
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY ("partner2") REFERENCES public.People ("id")
        ON UPDATE CASCADE
        ON DELETE CASCADE
);