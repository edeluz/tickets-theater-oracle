SELECT pel.titulo AS TITULO_LATINO,
pel.titulo_original AS TITULO_INGLES,
te.nombre as SALA,
NVL(funcion.funcion_manana, 'NA') AS FUNCION_MANANA,
NVL(funcion.funcion_tarde, 'NA') AS FUNCION_TARDE,
NVL(funcion.funcion_noche, 'NA') AS FUNCION_NOCHE
FROM PELICULA pel
INNER JOIN FUNCION_CARTELERA funcion
ON funcion.pelicula_id = pel.id
INNER JOIN TEATRO te
ON te.id = funcion.teatro_id
WHERE funcion.en_cartelera = 'S';
