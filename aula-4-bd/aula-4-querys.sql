INSERT INTO CATEGORIA VALUES(1, 'DOCE') --INSERINDO VALORES NA TABELA CATEGORIA
INSERT INTO CATEGORIA VALUES(5, 'CONGELADO')

SELECT * FROM CATEGORIA c -- consulta da tabela categoria

INSERT INTO CATEGORIA(COD_CATEGORIA, CATEGORIA) VALUES(2, 'BEBIDA') --INSERINDO VALORES NA TABELA REFERENCIANDO ANTES OS CAMPOS PARA SEUS VALORES
INSERT INTO CATEGORIA(COD_CATEGORIA, CATEGORIA) VALUES(NEXTVAL, 'DOCE')

UPDATE PRODUTO 
	SET COD_PRODUTO = 1 --UPDATE SEM WHERE 
	
INSERT INTO PRODUTO (COD_PRODUTO, COD_CATEGORIA, PRODUTO) VALUES(1, 2, 'CERVEJA')
INSERT INTO PRODUTO (COD_PRODUTO, COD_CATEGORIA, PRODUTO) VALUES(2, 2, 'SODA')
INSERT INTO PRODUTO (COD_PRODUTO, COD_CATEGORIA, PRODUTO) VALUES(3, 2, 'COCA-COLA')
	
UPDATE PRODUTO SET PRODUTO = 'SODA' WHERE COD_PRODUTO = 1
	
SELECT * FROM PRODUTO p 

UPDATE PRODUTO 
	SET COD_CATEGORIA  = 
	WHERE COD_PRODUTO >=1 AND COD_PRODUTO <=3
	

UPDATE PRODUTO SET --UPDATE EM MAIS DE UM CAMPO
	COD_CATEGORIA = 1,
	PRODUTO = 'BOLACHA/BISCOTO DOCE'
WHERE COD_PRODUTO = 4