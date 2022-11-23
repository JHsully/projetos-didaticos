execute INCLUIR_CLIENTE (9,'MERCADOSAO JOAO','45623',1,120000);

DECLARE 
    v_SEGMERCADO_ID CLIENTE.SEGMERCADO_ID%type := 3;
BEGIN
    FOR v_ID IN 1..7 LOOP
        atualizar_cli_seg_mercado(p_SEGMERCADO_ID => v_SEGMERCADO_ID, p_ID => v_ID);
    END LOOP;
END;

SELECT * FROM CLIENTE;

SET SERVEROUTPUT ON;

DECLARE
    CURSOR cur_CLIENTE IS SELECT ID, RAZAO_SOCIAL FROM CLIENTE;
    v_ID CLIENTE.ID%type;
    v_RAZAO_SOCIAL CLIENTE.RAZAO_SOCIAL%type;
BEGIN
    OPEN cur_CLIENTE;
    LOOP
        FETCH cur_CLIENTE INTO v_ID, v_RAZAO_SOCIAL;
    EXIT WHEN cur_CLIENTE%NOTFOUND;
        dbms_output.put_line('ID = ' || v_ID);
        dbms_output.put_line('Razão Social = ' || v_RAZAO_SOCIAL);
    END LOOP;
    CLOSE cur_CLIENTE;
END;



DECLARE
    CURSOR cur_CLIENTE IS SELECT ID FROM CLIENTE;
    v_SEGMERCADO_ID CLIENTE.SEGMERCADO_ID%type := 2;
    v_ID CLIENTE.ID%type;
BEGIN
    OPEN cur_CLIENTE;
    LOOP
        FETCH cur_CLIENTE INTO v_ID;
    EXIT WHEN cur_CLIENTE%NOTFOUND;
        atualizar_cli_seg_mercado(p_SEGMERCADO_ID => v_SEGMERCADO_ID, p_ID => v_ID);
    END LOOP;
    CLOSE cur_CLIENTE;
END;


DECLARE
    CURSOR cur_CLIENTE IS SELECT ID FROM CLIENTE;
    v_SEGMERCADO_ID CLIENTE.SEGMERCADO_ID%type := 1;
BEGIN
    FOR cli_rec IN cur_CLIENTE LOOP
        atualizar_cli_seg_mercado(p_SEGMERCADO_ID => v_SEGMERCADO_ID, p_ID => cli_rec.ID);
    END LOOP;
END;


