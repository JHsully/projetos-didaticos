EXECUTE INCLUIR_CLIENTE('11', 'MERCADO SSS', '40000', 1, 120000);

EXECUTE INCLUIR_CLIENTE('1', 'MERCADO AAA', '45677', 1, 90000);

create or replace PROCEDURE incluir_cliente (
    p_ID IN CLIENTE.ID%type, p_RAZAO_SOCIAL IN CLIENTE.RAZAO_SOCIAL%type,
    p_CNPJ IN CLIENTE.CNPJ%type, p_SEGMERCADO_ID IN CLIENTE.SEGMERCADO_ID%type,
    p_FATURAMENTO_PREVISTO IN CLIENTE.FATURAMENTO_PREVISTO%type)
IS
    v_CATEGORIA CLIENTE.CATEGORIA%type;
    v_CNPJ CLIENTE.CNPJ%type := p_CNPJ;
BEGIN
    formata_cnpj(v_CNPJ);
    v_CATEGORIA := categoria_cliente(p_FATURAMENTO_PREVISTO);
    INSERT INTO CLIENTE (ID, RAZAO_SOCIAL, CNPJ, SEGMERCADO_ID, DATA_INCLUSAO, FATURAMENTO_PREVISTO, CATEGORIA)
        VALUES (p_ID, p_RAZAO_SOCIAL, v_CNPJ, p_SEGMERCADO_ID, SYSDATE, p_FATURAMENTO_PREVISTO, v_CATEGORIA);
    COMMIT;
EXCEPTION
    WHEN dup_val_on_index THEN 
        dbms_output.put_line ('CLIENTE JÁ CADASTRADO !!!!');
END;


EXECUTE INCLUIR_CLIENTE('12', 'MERCADO SSS', '40000', 1, 120000);

EXECUTE INCLUIR_CLIENTE('1', 'MERCADO AAA', '45677', 1, 90000);



Create or replace PROCEDURE incluir_cliente (
    p_ID IN CLIENTE.ID%type, 
    p_RAZAO_SOCIAL IN CLIENTE.RAZAO_SOCIAL%type, 
    p_CNPJ IN CLIENTE.CNPJ%type, 
    p_SEGMERCADO_ID IN CLIENTE.SEGMERCADO_ID%type, 
    p_FATURAMENTO_PREVISTO IN CLIENTE.FATURAMENTO_PREVISTO%type
)
IS
    v_CATEGORIA CLIENTE.CATEGORIA%type;
    v_CNPJ CLIENTE.CNPJ%type := p_CNPJ;
    e_null exception;
    pragma exception_init (e_null, -1400);
BEGIN
    formata_cnpj(v_CNPJ);
    v_CATEGORIA := categoria_cliente(p_FATURAMENTO_PREVISTO);
    INSERT INTO CLIENTE (ID, RAZAO_SOCIAL, CNPJ, SEGMERCADO_ID, DATA_INCLUSAO, FATURAMENTO_PREVISTO, CATEGORIA)
        VALUES (p_ID, p_RAZAO_SOCIAL, v_CNPJ, p_SEGMERCADO_ID, SYSDATE, p_FATURAMENTO_PREVISTO, v_CATEGORIA);
    COMMIT;
EXCEPTION
    WHEN dup_val_on_index THEN
        raise_application_error(-20010, 'Cliente já cadastrado !!!!');
    WHEN e_null THEN
        raise_application_error(-20015, 'A coluna ID não pode receber valores nulos ou vazios !!!!');
END;



create or replace PROCEDURE incluir_cliente (
    p_ID IN CLIENTE.ID%type, 
    p_RAZAO_SOCIAL IN CLIENTE.RAZAO_SOCIAL%type,
    p_CNPJ IN CLIENTE.CNPJ%type, 
    p_SEGMERCADO_ID IN CLIENTE.SEGMERCADO_ID%type, 
    p_FATURAMENTO_PREVISTO IN CLIENTE.FATURAMENTO_PREVISTO%type
)
IS
    v_CATEGORIA CLIENTE.CATEGORIA%type;
    v_CNPJ CLIENTE.CNPJ%type := p_CNPJ;
    e_null exception;
    pragma exception_init (e_null, -1400);
BEGIN
    formata_cnpj(v_CNPJ);
    v_CATEGORIA := categoria_cliente(p_FATURAMENTO_PREVISTO);
    INSERT INTO CLIENTE (ID, RAZAO_SOCIAL, CNPJ, SEGMERCADO_ID, DATA_INCLUSAO, FATURAMENTO_PREVISTO, CATEGORIA)
        VALUES (p_ID, p_RAZAO_SOCIAL, v_CNPJ, p_SEGMERCADO_ID, SYSDATE, p_FATURAMENTO_PREVISTO, v_CATEGORIA);
    COMMIT;
EXCEPTION
    WHEN dup_val_on_index THEN
        raise_application_error(-20010, 'Cliente já cadastrado !!!!');
    WHEN e_null THEN
        raise_application_error(-20015, 'A coluna ID não pode receber valores nulos ou vazios !!!!');
    WHEN others THEN
        raise_application_error(-20020, 'Erro genérico : ' || sqlerrm());
END;


UPDATE CLIENTE SET SEGMERCADO_ID = 2
    WHERE ID = 15;
    
    
create or replace PROCEDURE atualizar_cli_seg_mercado (
    p_ID CLIENTE.ID%type, 
    p_SEGMERCADO_ID CLIENTE.SEGMERCADO_ID%type
)
IS
    e_CLIENTE_ID_INEXISTENTE exception;
BEGIN
    UPDATE CLIENTE SET SEGMERCADO_ID = p_SEGMERCADO_ID
        WHERE ID = p_ID;
    IF SQL%NOTFOUND THEN
        RAISE e_CLIENTE_ID_INEXISTENTE;
    END IF;
    COMMIT;
EXCEPTION
    WHEN e_CLIENTE_ID_INEXISTENTE THEN
        raise_application_error(-20100,'Cliente inexistente !!!!');
END;


EXECUTE ATUALIZAR_CLI_SEG_MERCADO (15, 2);