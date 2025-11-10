CREATE OR REPLACE TRIGGER TRG_VALIDAR_ASIENTO_DUPLICADO
BEFORE INSERT ON RESERVA_ASIENTO
FOR EACH ROW
DECLARE
    v_dni_cliente   CLIENTE.DNI%TYPE;
    v_funcion_id    TIQUETE.FUNCION_ID%TYPE;
    v_count         NUMBER;
BEGIN
    SELECT t.cliente_dni, t.funcion_id
      INTO v_dni_cliente, v_funcion_id
      FROM TIQUETE t
     WHERE t.id = :NEW.tiquete_id;

    SELECT COUNT(*)
      INTO v_count
      FROM RESERVA_ASIENTO ra
      JOIN TIQUETE tiq ON tiq.id = ra.tiquete_id
     WHERE tiq.cliente_dni = v_dni_cliente
       AND tiq.funcion_id = v_funcion_id
       AND ra.asiento = :NEW.asiento;

    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20010,
            '::TRG_VALIDAR_ASIENTO_DUPLICADO:: El cliente ' || v_dni_cliente ||
            ' ya reservó el asiento ' || :NEW.asiento ||
            ' para la misma función (' || v_funcion_id || ').');
    END IF;
END;
