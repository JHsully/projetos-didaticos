DECLARE
    
    v_ID SEGMERCADO.ID%type := 2;
    v_DESCRICAO SEGMERCADO.DESCRICAO%type := 'Atacado';
    
BEGIN
    
    INSERT INTO SEGMERCADO (ID,DESCRICAO) VALUES (v_ID, v_DESCRICAO);
    COMMIT;
    
END;

select * from segmercado;

DECLARE
    
    v_ID SEGMERCADO.ID%type := 2;
    v_DESCRICAO SEGMERCADO.DESCRICAO%type := 'Atacado';
    
BEGIN
    
    INSERT INTO SEGMERCADO (ID,DESCRICAO) VALUES (v_ID,upper(v_DESCRICAO));
    COMMIT;
    
END;

select * from segmercado where descricao = 'ATACADO';

select * from segmercado where descricao = 'atacado';

delete from segmercado where ID = 2;

select * from segmercado;

DECLARE
    
    v_ID SEGMERCADO.ID%type := 2;
    v_DESCRICAO SEGMERCADO.DESCRICAO%type := 'atacadistas';
    
BEGIN

    UPDATE SEGMERCADO SET DESCRICAO = upper (v_DESCRICAO) WHERE ID = v_ID;
    
    v_ID := 1;
    v_DESCRICAO := 'VAREJISTAS';
    
    UPDATE SEGMERCADO SET DESCRICAO = upper (v_DESCRICAO) WHERE ID = v_ID;
    
    
    COMMIT;
    
END;

SELECT * FROM SEGMERCADO order by ID;

DECLARE
    
    v_ID SEGMERCADO.ID%type := 3;
    v_DESCRICAO SEGMERCADO.DESCRICAO%type := 'esportistas';
    
BEGIN
    
    INSERT INTO SEGMERCADO (ID,DESCRICAO) VALUES (v_ID, upper(v_DESCRICAO));
    COMMIT;
    
END;

select * from segmercado;

DECLARE
    
    v_ID SEGMERCADO.ID%type := 3;

BEGIN 
    
    DELETE FROM SEGMERCADO WHERE ID = v_ID;
    COMMIT;
    
END;

SELECT * FROM SEGMERCADO;