INSERT INTO public.People (fiscalcode, name, surname, phone) VALUES 
    ('VHBRPN91E43B114Z', 'Milo', 'Alfonsi', '272691439301'),
    ('VCWLFY79S66L294T', 'Rocco', 'Franscini', '060869438780'),
    ('PRJRGV81C10D530L', 'Raffaele', 'Camiscione', '144912681515'),
    ('HFNHMN34B53D586M', 'Piergiorgio', 'Duse', '675919282097'),
    ('XVKBDR74P64G674T', 'Benedetto', 'Mattarella', '689645562064'),
    ('VMLCZT88C03D265G', 'Romeo', 'Vismara', '127469163912'),
    ('ZRPKKX27L30G234R', 'Ottavio', 'Gemito', '472759276358'),
    ('XCPYSM35D57G551N', 'Gian', 'Mercadante', '157709760123'),
    ('WGFSVF37A10L169Z', 'Federico', 'Cavalcanti', '246606049017'),
    ('YDPHBR85B12B553G', 'Ivan', 'Salvini', '900722369668'),
    ('HMFFWK77P01L814Q', 'Mariana', 'Vento', '759207550450'),
    ('CSRJMO94E27C914C', 'Marta', 'Parmitano', '758379187142'),
    ('MPVYRN77S60H669Y', 'Monica', 'Pizzo', '984144561791'),
    ('THVTLF64H30L784O', 'Gabriella', 'Mazzini', '132080795107'),
    ('LLHHKM46A20E502Q', 'Barbara', 'Venturi', '383385809000'),
    ('XHCPZX95C05H916E', 'Antonietta', 'Boccioni', '567155212439'),
    ('NHSNDG97L58H094R', 'Isa', 'Tolentino', '795542573277'),
    ('GWVJWT27L05L624H', 'Amalia', 'Jacuzzi', '162436899661'),
    ('NDTBZN98S23Z115H', 'Antonia', 'Lerner', '531690221799'),
    ('MLDGDV31L18G610V', 'Vincenza', 'Franceschi', '968833135247');

INSERT INTO public.Weddings (partner1, partner2) VALUES 
    ('VHBRPN91E43B114Z', 'MPVYRN77S60H669Y'),
    ('NHSNDG97L58H094R', 'NDTBZN98S23Z115H'),
    ('MLDGDV31L18G610V', 'VCWLFY79S66L294T'),
    ('VHBRPN91E43B114Z', 'VMLCZT88C03D265G');

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