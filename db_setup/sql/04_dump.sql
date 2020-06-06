INSERT INTO public.People (name, surname, phone) VALUES 
    ('Daniel', 'Marcon', '393344556677'), 
    ('Daniela', 'Marcona', '394455667788');

INSERT INTO public.Weddings (partner1, partner2) VALUES 
    ('1', '2');

INSERT INTO public.Articles (name, description, price) VALUES 
    ('Robot Roomba', 'Robot per la pulizia di casa', '199.99'),
    ('Trapunta', 'Trapunta matrimaniale invernale', '99.99'),
    ('Set Posate', 'Set posate in  24px', '59.90'),
    ('Nespresso', 'Macchina caffe espresso a cialdi di Nespresso', '54.99'),
    ('Set Bicchieri', 'Set Bicchieri in cristallo', '49.99'),
    ('Forno Micoonde', 'Forno Microonde Samson', '89.99'),
    ('Set Pentole', 'Set pentole in ceramica', '199.99');

INSERT INTO public.BridalRegistry (wedding, article) VALUES 
    (1, 1),
    (1, 2),
    (1, 3),
    (1, 4),
    (1, 5),
    (1, 6);

UPDATE BridalRegistry SET purchased = TRUE WHERE wedding = 1 AND article = 2;
UPDATE BridalRegistry SET purchased = TRUE WHERE wedding = 1 AND article = 3;