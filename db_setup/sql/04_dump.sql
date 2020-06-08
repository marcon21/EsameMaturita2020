INSERT INTO public.People (name, surname, phone, fiscalcode) VALUES 
    ('Milo', 'Alfonsi', '272691439301', 'VHBRPN91E43B114Z'),
    ('Rocco', 'Franscini', '060869438780', 'VCWLFY79S66L294T'),
    ('Raffaele', 'Camiscione', '144912681515', 'PRJRGV81C10D530L'),
    ('Piergiorgio', 'Duse', '675919282097', 'HFNHMN34B53D586M'),
    ('Benedetto', 'Mattarella', '689645562064', 'XVKBDR74P64G674T'),
    ('Romeo', 'Vismara', '127469163912', 'VMLCZT88C03D265G'),
    ('Ottavio', 'Gemito', '472759276358', 'ZRPKKX27L30G234R'),
    ('Gian', 'Mercadante', '157709760123', 'XCPYSM35D57G551N'),
    ('Federico', 'Cavalcanti', '246606049017', 'WGFSVF37A10L169Z'),
    ('Ivan', 'Salvini', '900722369668', 'YDPHBR85B12B553G'),
    ('Mariana', 'Vento', '759207550450', 'HMFFWK77P01L814Q'),
    ('Marta', 'Parmitano', '758379187142', 'CSRJMO94E27C914C'),
    ('Monica', 'Pizzo', '984144561791', 'MPVYRN77S60H669Y'),
    ('Gabriella', 'Mazzini', '132080795107', 'THVTLF64H30L784O'),
    ('Barbara', 'Venturi', '383385809000', 'LLHHKM46A20E502Q'),
    ('Antonietta', 'Boccioni', '567155212439', 'XHCPZX95C05H916E'),
    ('Isa', 'Tolentino', '795542573277', 'NHSNDG97L58H094R'),
    ('Amalia', 'Jacuzzi', '162436899661', 'GWVJWT27L05L624H'),
    ('Antonia', 'Lerner', '531690221799', 'NDTBZN98S23Z115H'),
    ('Vincenza', 'Franceschi', '968833135247', 'MLDGDV31L18G610V');

INSERT INTO public.Weddings (partner1, partner2) VALUES 
    ('1', '11'),('2', '12'),('3', '13'),('4', '14'),('5', '15');

INSERT INTO public.Articles (name, description, price) VALUES 
    ('Robot Roomba', 'Robot per la pulizia di casa', '199.99'),
    ('Trapunta', 'Trapunta matrimaniale invernale', '99.99'),
    ('Set Posate', 'Set posate in  24px', '59.90'),
    ('Nespresso', 'Macchina caffe espresso a cialde, what else?', '54.99'),
    ('Set Bicchieri', 'Set Bicchieri in cristallo', '49.99'),
    ('Forno Micoonde', 'Forno Microonde Samson', '89.99'),
    ('Set Pentole', 'Set pentole in ceramica', '199.99');

INSERT INTO public.BridalRegistry (wedding, article) VALUES 
    (1, 1),
    (1, 2),
    (1, 3),
    (1, 4),
    (1, 5),
    (1, 6),  
    (2, 2),
    (2, 3),
    (2, 4),
    (2, 5),
    (2, 6),
    (2, 7);

UPDATE BridalRegistry SET purchased = TRUE WHERE wedding = 1 AND article = 2;
UPDATE BridalRegistry SET purchased = TRUE WHERE wedding = 1 AND article = 3;