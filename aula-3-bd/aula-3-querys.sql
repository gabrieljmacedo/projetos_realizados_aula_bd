ALTER TABLE ITEM_PRODUTO 
ADD TIPO_MEDIDA VARCHAR(30); -- adicionando campo tipo_medida na tabela item_produto
	
ALTER TABLE ITEM_PRODUTO  
ADD CONSTRAINT CH_ITEM_PRODUTO_TIPO_MEDIDA CHECK (TIPO_MEDIDA IN('LITRO','KILO', 'UNIDADE')); -- adicionando a restricao NO campo tipo_medida para receber somente os valores definidos

SELECT * FROM user_constraints; --mostrando todas AS constraints


CREATE SEQUENCE SEQ_CATEGORIA; -- criando sequencia para ser usado na tabela categoria

SELECT SEQ_CATEGORIA.NEXTVAL FROM DUAL; --visualizando os valores da sequencia criada

INSERT INTO CATEGORIA VALUES (SEQ_CATEGORIA.NEXTVAL, 'BEBIDA'; -- insercao dos valores na tabela categoria utilizando o sequence

SELECT * FROM CATEGORIA c -- consulta da tabela categoria