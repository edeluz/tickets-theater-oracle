SELECT  
    c.dni AS cliente_dni,
    fc.teatro_id,
    COUNT(ra.id) AS total_asientos_reservados
FROM cliente c
INNER JOIN tiquete t
    ON t.cliente_dni = c.dni
INNER JOIN reserva_asiento ra
    ON ra.tiquete_id = t.id
INNER JOIN funcion_cartelera fc
    ON fc.id = t.funcion_id
WHERE c.dni = ?
GROUP BY 
    c.dni,
    fc.teatro_id
ORDER BY total_asientos_reservados DESC;
