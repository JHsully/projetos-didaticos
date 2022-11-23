EXECUTE incluir_cliente(1,'MERCEARIA XYZ','89231',1,10000);
EXECUTE incluir_cliente(3,'FARMACIA QWE','90000',1,80000);
EXECUTE incluir_cliente(4,'MERCADINHO JKL','89236',1,70000);
EXECUTE incluir_cliente(5,'TAVERNA SDF','45600',1,60000);
EXECUTE incluir_cliente(6,'BAR 222','76000',1,20000);



SELECT * FROM CLIENTE;



CREATE OR REPLACE PROCEDURE atualizar_cli_seg_mercado (
    p_ID CLIENTE.ID%type, 
    p_SEGMERCADO_ID CLIENTE.SEGMERCADO_ID%type
)
IS
BEGIN
    UPDATE CLIENTE SET SEGMERCADO_ID = p_SEGMERCADO_ID
    WHERE ID = p_ID;
    COMMIT;
END;


EXECUTE atualizar_cli_seg_mercado(3, 2);



DECLARE
    v_SEGMERCADO_ID CLIENTE.SEGMERCADO_ID%type := 1;
    v_I NUMBER(3) := 1;
BEGIN
    LOOP
        atualizar_cli_seg_mercado(v_I, v_SEGMERCADO_ID);
        v_I := v_I + 1;
    EXIT WHEN v_I > 6;
    END LOOP;
END;



DECLARE
    v_SEGMERCADO_ID CLIENTE.SEGMERCADO_ID%type := 1;
BEGIN
    FOR v_ID IN 1..6 LOOP
        atualizar_cli_seg_mercado(v_ID, v_SEGMERCADO_ID);
    END LOOP;
END;


DECLARE
    v_SEGMERCADO_ID CLIENTE.SEGMERCADO_ID%type := 3;
BEGIN
    FOR v_ID IN 1..6 LOOP
        atualizar_cli_seg_mercado(v_ID, v_SEGMERCADO_ID);
    END LOOP;
END;


DECLARE
    v_SEGMERCADO_ID CLIENTE.SEGMERCADO_ID%type := 2;
BEGIN
    FOR v_ID IN 1..6 LOOP
        atualizar_cli_seg_mercado(p_ID => v_ID, p_SEGMERCADO_ID => v_SEGMERCADO_ID);
    END LOOP;
END;


DECLARE
    v_SEGMERCADO_ID CLIENTE.SEGMERCADO_ID%type := 1;
BEGIN
    FOR v_ID IN 1..6 LOOP
        atualizar_cli_seg_mercado(p_SEGMERCADO_ID => v_SEGMERCADO_ID, p_ID => v_ID);
    END LOOP;
END;


SELECT * FROM CLIENTE;