CREATE OR REPLACE PROCEDURE incluir_cliente
    (p_ID IN CLIENTE.ID%type, p_RAZAO_SOCIAL IN CLIENTE.RAZAO%type,
    p_CNPJ IN CLIENTE.CNPJ%type, p_SEGMERCADO_ID IN CLIENTE.SEGMERCADO_ID%type,
    p_FAUTRAMENTO_PREVISTO IN CLIENTE.FATURAMENTO_PREVISTO%type);
IS 
    v_CATEGORIA CLIENTE.CATEGORIA%type;
BEGIN
    v_CATEGORIA :=categoria_cliente(p_FATURAMENTO_PREVISTO);
    INSERT INTO CLIENTE (ID,RAZAO_SOCIAL, CNPJ, SEGMERCADO_ID, DATA_INCLUSAO, FATURAMENTO_PREVISTO, CATEGORIA)
    VALUES (p_ID, p_RAZAO_SOCIAL, p_CNPOJ, p_SEGMERCADO_ID, SYSDATE, p_FATURAMENTO_PREVISTO, v_CATEGORIA);
    COMMIT;
END; 