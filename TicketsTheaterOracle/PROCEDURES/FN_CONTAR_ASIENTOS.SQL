create or replace FUNCTION FN_CONTAR_ASIENTOS(asientos IN VARCHAR2)
RETURN NUMBER
IS
    v_pos     PLS_INTEGER := 1;
    v_coma    PLS_INTEGER;
    v_total   PLS_INTEGER := 0;
BEGIN
    -- Si la cadena está vacía o nula, devolver 0
    IF asientos IS NULL OR TRIM(asientos) IS NULL THEN
        RETURN 0;
    END IF;
    LOOP
        -- Busca la posición de la siguiente coma
        v_coma := INSTR(asientos, ',', v_pos);
        -- Cuenta un asiento
        v_total := v_total + 1;
        -- Si no hay más comas, salir del loop
        EXIT WHEN v_coma = 0;
        -- Avanza a la siguiente posición después de la coma
        v_pos := v_coma + 1;
    END LOOP;

    RETURN v_total;
END;