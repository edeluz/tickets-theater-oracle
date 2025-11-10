create or replace PROCEDURE SP_CREAR_TIQUETE (
    p_cliente_dni      IN NUMBER,
    p_funcion_id       IN NUMBER,
    p_horario          IN VARCHAR2,
    p_asientos         IN VARCHAR2,      -- Ejemplo: 'A1,A2,A3'
    p_precio_unitario  IN NUMBER,
    p_estado           IN VARCHAR2 DEFAULT 'PAGADO'
)
IS
    v_tiquete_id   INTEGER;
    v_reserva_id   INTEGER;
    v_asiento      VARCHAR2(10);
    v_inicio       PLS_INTEGER := 1;
    v_coma_pos     PLS_INTEGER;
    v_total        NUMBER := 0;
    v_contador     NUMBER := 0;
    v_fin_loop    NUMBER := 0;
BEGIN
    DBMS_OUTPUT.PUT_LINE('::SP_CREAR_TIQUETE:: INICIO...');

    -- Crear el tiquete primero (sin cantidad ni total todavía)
    v_tiquete_id := SEQ_TIQUETE_ID.NEXTVAL;

    INSERT INTO TIQUETE (
        ID, CANTIDAD_ASIENTOS, HORARIO_FUNCION, PRECIO, FECHA_COMPRA, ESTADO, FUNCION_ID, CLIENTE_DNI
    ) VALUES (
        v_tiquete_id, 
        0,               -- Se actualizará al final
        p_horario, 
        0,               -- Se actualizará al final
        SYSDATE, 
        p_estado, 
        p_funcion_id, 
        p_cliente_dni
    );    
    v_fin_loop := FN_CONTAR_ASIENTOS(p_asientos);

    DBMS_OUTPUT.PUT_LINE('::SP_CREAR_TIQUETE:: Tiquete creado ID=' || v_tiquete_id || ' - v_fin_loop=' || v_fin_loop);

    -- Recorrer los asientos una sola vez e insertar reservas
    LOOP
        v_coma_pos := INSTR(p_asientos, ',', v_inicio);
        
        DBMS_OUTPUT.PUT_LINE('::SP_CREAR_TIQUETE:: v_coma_pos=' || v_coma_pos);

        IF v_coma_pos > 0 THEN
            v_asiento := SUBSTR(p_asientos, v_inicio, v_coma_pos - v_inicio);
            v_inicio := v_coma_pos + 1;
        ELSE
            v_asiento := SUBSTR(p_asientos, v_inicio);
        END IF;

        EXIT WHEN v_asiento IS NULL;

        v_reserva_id := SEQ_RESERVA_ID.NEXTVAL;
        v_contador   := v_contador + 1;
        v_total      := v_total + p_precio_unitario;

        INSERT INTO RESERVA_ASIENTO (ID, ASIENTO, TIQUETE_ID)
        VALUES (v_reserva_id, TRIM(v_asiento), v_tiquete_id);

        DBMS_OUTPUT.PUT_LINE('::SP_CREAR_TIQUETE:: v_contador=' || v_contador || ' - Asiento reservado: ' || TRIM(v_asiento));

        EXIT WHEN v_contador = v_fin_loop;
    END LOOP;

    -- Actualizar los datos del tiquete con el total real y la cantidad
    UPDATE TIQUETE
    SET 
        CANTIDAD_ASIENTOS = v_contador,
        PRECIO = v_total
    WHERE ID = v_tiquete_id;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('::SP_CREAR_TIQUETE:: Tiquete ' || v_tiquete_id || 
                         ' actualizado: ' || v_contador || ' asientos. Total: ' || v_total);

EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('::SP_CREAR_TIQUETE:: Asiento ya reservado para esa función.');
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('::SP_CREAR_TIQUETE:: Error al crear tiquete: ' || SQLERRM);
END;