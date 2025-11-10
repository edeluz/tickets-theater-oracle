CREATE USER cine_operador IDENTIFIED BY operador123
DEFAULT TABLESPACE users
TEMPORARY TABLESPACE temp
QUOTA 20M ON users;

GRANT CONNECT, RESOURCE TO cine_operador;

GRANT SELECT ON cineapp.CLIENTE TO cine_operador;
GRANT SELECT ON cineapp.FUNCION_CARTELERA TO cine_operador;
GRANT SELECT ON cineapp.PELICULA TO cine_operador;
GRANT SELECT ON cineapp.TEATRO TO cine_operador;
GRANT SELECT ON cineapp.TIQUETE TO cine_operador;
GRANT SELECT ON cineapp.RESERVA_ASIENTO TO cine_operador;
