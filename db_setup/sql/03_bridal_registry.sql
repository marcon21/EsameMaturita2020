CREATE TABLE public.BridalRegistry (
    "wedding" INT NOT NULL,
    "article" INT NOT NULL,
    "purchased" BOOLEAN DEFAULT FALSE,
    
    PRIMARY KEY ("wedding", "article"),
    
    FOREIGN KEY ("wedding") REFERENCES public.Weddings ("id")
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    FOREIGN KEY ("article") REFERENCES public.Articles ("id")
        ON UPDATE CASCADE
        ON DELETE CASCADE
);