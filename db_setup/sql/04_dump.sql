INSERT INTO public.People (name, surname, phone) VALUES 
    ('Milo', 'Alfonsi', '272691439301'),
    ('Rocco', 'Franscini', '060869438780'),
    ('Raffaele', 'Camiscione', '144912681515'),
    ('Piergiorgio', 'Duse', '675919282097'),
    ('Benedetto', 'Mattarella', '689645562064'),
    ('Romeo', 'Vismara', '127469163912'),
    ('Ottavio', 'Gemito', '472759276358'),
    ('Gian', 'Mercadante', '157709760123'),
    ('Federico', 'Cavalcanti', '246606049017'),
    ('Ivan', 'Salvini', '900722369668'),
    ('Mariana', 'Vento', '759207550450'),
    ('Marta', 'Parmitano', '758379187142'),
    ('Monica', 'Pizzo', '984144561791'),
    ('Gabriella', 'Mazzini', '132080795107'),
    ('Barbara', 'Venturi', '383385809000'),
    ('Antonietta', 'Boccioni', '567155212439'),
    ('Isa', 'Tolentino', '795542573277'),
    ('Amalia', 'Jacuzzi', '162436899661'),
    ('Antonia', 'Lerner', '531690221799'),
    ('Vincenza', 'Franceschi', '968833135247');

INSERT INTO public.Weddings (partner1, partner2) VALUES 
    ('1', '11'),('2', '12'),('3', '13'),('4', '14'),('5', '15'),
    ('6', '16'),('7', '17'),('8', '18'),('9', '19'),('10', '20');

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