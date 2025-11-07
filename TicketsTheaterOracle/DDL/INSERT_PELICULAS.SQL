-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- 10 registros para la tabla PELICULA

INSERT INTO PELICULA (
    ID, TITULO, TITULO_ORIGINAL, PRODUCTORA, FECHA_ESTRENO, SINOPSIS
) VALUES (
    SEQ_PELICULA_ID.NEXTVAL,
    'Todo en todas partes al mismo tiempo',
    'Everything Everywhere All at Once',
    'A24',
    TO_DATE('2022-03-25', 'YYYY-MM-DD'),
    'Una madre agotada se ve arrastrada a un multiverso de realidades alternativas donde debe conectarse con versiones de sí misma para evitar la destrucción del universo y redescubrir el amor por su familia.'
);

INSERT INTO PELICULA (
    ID, TITULO, TITULO_ORIGINAL, PRODUCTORA, FECHA_ESTRENO, SINOPSIS
) VALUES (
    SEQ_PELICULA_ID.NEXTVAL,
    'CODA: Señales del corazón',
    'CODA',
    'Vendôme Pictures',
    TO_DATE('2021-08-13', 'YYYY-MM-DD'),
    'Ruby, la única oyente en una familia sorda, descubre su pasión por el canto mientras equilibra la lealtad hacia su familia y su deseo de seguir sus propios sueños.'
);

INSERT INTO PELICULA (
    ID, TITULO, TITULO_ORIGINAL, PRODUCTORA, FECHA_ESTRENO, SINOPSIS
) VALUES (
    SEQ_PELICULA_ID.NEXTVAL,
    'Nomadland',
    'Nomadland',
    'Highwayman Films',
    TO_DATE('2020-12-04', 'YYYY-MM-DD'),
    'Tras perderlo todo en la Gran Recesión, una mujer emprende un viaje por el oeste estadounidense viviendo como una nómada moderna, encontrando libertad y comunidad en el camino.'
);

INSERT INTO PELICULA (
    ID, TITULO, TITULO_ORIGINAL, PRODUCTORA, FECHA_ESTRENO, SINOPSIS
) VALUES (
    SEQ_PELICULA_ID.NEXTVAL,
    'Parásitos',
    'Parasite',
    'CJ Entertainment',
    TO_DATE('2019-05-30', 'YYYY-MM-DD'),
    'Una familia pobre se infiltra en la vida de una familia adinerada al ofrecer sus servicios domésticos, desencadenando una serie de eventos que exponen la desigualdad social con humor negro y tensión.'
);

INSERT INTO PELICULA (
    ID, TITULO, TITULO_ORIGINAL, PRODUCTORA, FECHA_ESTRENO, SINOPSIS
) VALUES (
    SEQ_PELICULA_ID.NEXTVAL,
    'Green Book: Una amistad sin fronteras',
    'Green Book',
    'Participant Media',
    TO_DATE('2018-11-16', 'YYYY-MM-DD'),
    'Un pianista negro de clase alta contrata a un chofer italoamericano para su gira por el sur de EE. UU. en los años 60, forjando una amistad improbable en medio del racismo y los prejuicios.'
);

INSERT INTO PELICULA (
    ID, TITULO, TITULO_ORIGINAL, PRODUCTORA, FECHA_ESTRENO, SINOPSIS
) VALUES (
    SEQ_PELICULA_ID.NEXTVAL,
    'La forma del agua',
    'The Shape of Water',
    'Fox Searchlight Pictures',
    TO_DATE('2017-12-01', 'YYYY-MM-DD'),
    'Durante la Guerra Fría, una mujer muda que trabaja en un laboratorio secreto desarrolla un vínculo único con una criatura acuática cautiva, desafiando los límites del amor y la humanidad.'
);

INSERT INTO PELICULA (
    ID, TITULO, TITULO_ORIGINAL, PRODUCTORA, FECHA_ESTRENO, SINOPSIS
) VALUES (
    SEQ_PELICULA_ID.NEXTVAL,
    'Luz de luna',
    'Moonlight',
    'A24',
    TO_DATE('2016-10-21', 'YYYY-MM-DD'),
    'Un joven afroamericano crece en un barrio conflictivo de Miami, enfrentando su identidad, sexualidad y el peso de la pobreza en tres etapas de su vida marcadas por la búsqueda de amor y aceptación.'
);

INSERT INTO PELICULA (
    ID, TITULO, TITULO_ORIGINAL, PRODUCTORA, FECHA_ESTRENO, SINOPSIS
) VALUES (
    SEQ_PELICULA_ID.NEXTVAL,
    'En primera plana',
    'Spotlight',
    'Participant Media',
    TO_DATE('2015-11-06', 'YYYY-MM-DD'),
    'Basada en hechos reales, sigue a un equipo de periodistas de The Boston Globe que destapa un escándalo de abusos sexuales dentro de la Iglesia Católica, cambiando para siempre el periodismo de investigación.'
);

INSERT INTO PELICULA (
    ID, TITULO, TITULO_ORIGINAL, PRODUCTORA, FECHA_ESTRENO, SINOPSIS
) VALUES (
    SEQ_PELICULA_ID.NEXTVAL,
    'Birdman o (La inesperada virtud de la ignorancia)',
    'Birdman or (The Unexpected Virtue of Ignorance)',
    'Regency Enterprises',
    TO_DATE('2014-10-17', 'YYYY-MM-DD'),
    'Un actor en decadencia, famoso por interpretar a un superhéroe, intenta reinventarse montando una obra en Broadway, mientras lucha con su ego, su familia y su salud mental.'
);

INSERT INTO PELICULA (
    ID, TITULO, TITULO_ORIGINAL, PRODUCTORA, FECHA_ESTRENO, SINOPSIS
) VALUES (
    SEQ_PELICULA_ID.NEXTVAL,
    '12 años de esclavitud',
    '12 Years a Slave',
    'Plan B Entertainment',
    TO_DATE('2013-10-18', 'YYYY-MM-DD'),
    'Basada en una historia real, narra la vida de Solomon Northup, un hombre libre afroamericano secuestrado y vendido como esclavo, que lucha por sobrevivir y recuperar su libertad en el siglo XIX'
);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- 17 registros para la tabla FUNCION_CARTELERA

INSERT INTO FUNCION_CARTELERA (
    ID, PELICULA_ID, TEATRO_ID, FUNCION_MANANA, FUNCION_TARDE, FUNCION_NOCHE, EN_CARTELERA
) VALUES (
    SEQ_FUNCION_CARTELERA_ID.NEXTVAL, 11, 1, '10:30 AM', '03:00 PM', '08:00 PM', 'S'
);

INSERT INTO FUNCION_CARTELERA (
    ID, PELICULA_ID, TEATRO_ID, FUNCION_MANANA, FUNCION_TARDE, FUNCION_NOCHE, EN_CARTELERA
) VALUES (
    SEQ_FUNCION_CARTELERA_ID.NEXTVAL, 11, 2, NULL, NULL, '07:00 PM', 'S'
);

INSERT INTO FUNCION_CARTELERA (
    ID, PELICULA_ID, TEATRO_ID, FUNCION_MANANA, FUNCION_TARDE, FUNCION_NOCHE, EN_CARTELERA
) VALUES (
    SEQ_FUNCION_CARTELERA_ID.NEXTVAL, 12, 3, '11:30 AM', '02:30 PM', NULL, 'S'
);

INSERT INTO FUNCION_CARTELERA (
    ID, PELICULA_ID, TEATRO_ID, FUNCION_MANANA, FUNCION_TARDE, FUNCION_NOCHE, EN_CARTELERA
) VALUES (
    SEQ_FUNCION_CARTELERA_ID.NEXTVAL, 12, 2, '11:00 AM', '04:00 PM', NULL, 'S'
);

INSERT INTO FUNCION_CARTELERA (
    ID, PELICULA_ID, TEATRO_ID, FUNCION_MANANA, FUNCION_TARDE, FUNCION_NOCHE, EN_CARTELERA
) VALUES (
    SEQ_FUNCION_CARTELERA_ID.NEXTVAL, 13, 4, '12:00 PM', NULL, '06:30 PM', 'S'
);

INSERT INTO FUNCION_CARTELERA (
    ID, PELICULA_ID, TEATRO_ID, FUNCION_MANANA, FUNCION_TARDE, FUNCION_NOCHE, EN_CARTELERA
) VALUES (
    SEQ_FUNCION_CARTELERA_ID.NEXTVAL, 13, 3, NULL, NULL, '06:30 PM', 'S'
);

INSERT INTO FUNCION_CARTELERA (
    ID, PELICULA_ID, TEATRO_ID, FUNCION_MANANA, FUNCION_TARDE, FUNCION_NOCHE, EN_CARTELERA
) VALUES (
    SEQ_FUNCION_CARTELERA_ID.NEXTVAL, 14, 4, NULL, '03:15 PM', '08:45 PM', 'S'
);

INSERT INTO FUNCION_CARTELERA (
    ID, PELICULA_ID, TEATRO_ID, FUNCION_MANANA, FUNCION_TARDE, FUNCION_NOCHE, EN_CARTELERA
) VALUES (
    SEQ_FUNCION_CARTELERA_ID.NEXTVAL, 14, 5, NULL, '03:45 PM', '07:15 PM', 'S'
);

INSERT INTO FUNCION_CARTELERA (
    ID, PELICULA_ID, TEATRO_ID, FUNCION_MANANA, FUNCION_TARDE, FUNCION_NOCHE, EN_CARTELERA
) VALUES (
    SEQ_FUNCION_CARTELERA_ID.NEXTVAL, 15, 5, '11:30 AM', '05:00 PM', '10:00 PM', 'S'
);

INSERT INTO FUNCION_CARTELERA (
    ID, PELICULA_ID, TEATRO_ID, FUNCION_MANANA, FUNCION_TARDE, FUNCION_NOCHE, EN_CARTELERA
) VALUES (
    SEQ_FUNCION_CARTELERA_ID.NEXTVAL, 16, 6, NULL, '03:45 PM', '09:15 PM', 'N'
);

INSERT INTO FUNCION_CARTELERA (
    ID, PELICULA_ID, TEATRO_ID, FUNCION_MANANA, FUNCION_TARDE, FUNCION_NOCHE, EN_CARTELERA
) VALUES (
    SEQ_FUNCION_CARTELERA_ID.NEXTVAL, 17, 7, '09:30 AM', '02:00 PM', NULL, 'S'
);

INSERT INTO FUNCION_CARTELERA (
    ID, PELICULA_ID, TEATRO_ID, FUNCION_MANANA, FUNCION_TARDE, FUNCION_NOCHE, EN_CARTELERA
) VALUES (
    SEQ_FUNCION_CARTELERA_ID.NEXTVAL, 16, 7, NULL, NULL, '06:30 PM', 'S'
);

INSERT INTO FUNCION_CARTELERA (
    ID, PELICULA_ID, TEATRO_ID, FUNCION_MANANA, FUNCION_TARDE, FUNCION_NOCHE, EN_CARTELERA
) VALUES (
    SEQ_FUNCION_CARTELERA_ID.NEXTVAL, 18, 8, '10:45 AM', NULL, '08:30 PM', 'S'
);

INSERT INTO FUNCION_CARTELERA (
    ID, PELICULA_ID, TEATRO_ID, FUNCION_MANANA, FUNCION_TARDE, FUNCION_NOCHE, EN_CARTELERA
) VALUES (
    SEQ_FUNCION_CARTELERA_ID.NEXTVAL, 18, 10, NULL, '04:15 PM', NULL, 'S'
);

INSERT INTO FUNCION_CARTELERA (
    ID, PELICULA_ID, TEATRO_ID, FUNCION_MANANA, FUNCION_TARDE, FUNCION_NOCHE, EN_CARTELERA
) VALUES (
    SEQ_FUNCION_CARTELERA_ID.NEXTVAL, 19, 9, NULL, '03:30 PM', '08:00 PM', 'S'
);

INSERT INTO FUNCION_CARTELERA (
    ID, PELICULA_ID, TEATRO_ID, FUNCION_MANANA, FUNCION_TARDE, FUNCION_NOCHE, EN_CARTELERA
) VALUES (
    SEQ_FUNCION_CARTELERA_ID.NEXTVAL, 20, 9, '10:00 AM', NULL, NULL, 'S'
);

INSERT INTO FUNCION_CARTELERA (
    ID, PELICULA_ID, TEATRO_ID, FUNCION_MANANA, FUNCION_TARDE, FUNCION_NOCHE, EN_CARTELERA
) VALUES (
    SEQ_FUNCION_CARTELERA_ID.NEXTVAL, 20, 10, '11:15 AM', '04:45 PM', '09:45 PM', 'S'
);
