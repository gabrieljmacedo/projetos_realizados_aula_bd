CREATE TABLE MATERIA_PRIMA (
 COD_MATERIA_PRIMA NUMBER CONSTRAINT PK_MATPRI_CODMATPRI PRIMARY KEY,
 MATERIA_PRIMA VARCHAR2(20) CONSTRAINT UK_MATPRI_MATPRI UNIQUE
);

--criação da tabela matera prima com chave primária no campo cod_materia_prima e campo único no materia_prima

CREATE TABLE CATEGORIA (
 COD_CATEGORIA NUMBER CONSTRAINT PK_CAT_CODCAT PRIMARY KEY,
 CATEGORIA VARCHAR2(20) CONSTRAINT UK_CAT_CAT UNIQUE CONSTRAINT CK_CAT_CAT CHECK(CATEGORIA IN('DOCE','BEBIDA','CONGELADO'))
);

--criação da tabela categoria com chave primária no campo cod_categoria e campo único categoria + check no campo com os valores (doce, bebida e congelado)

CREATE TABLE PRODUTO (
 COD_PRODUTO NUMBER CONSTRAINT PK_PRO_CODPRO PRIMARY KEY,
 COD_CATEGORIA NUMBER CONSTRAINT FK_PRODUTO_CATEGORIA REFERENCES CATEGORIA(COD_CATEGORIA),
 PRODUTO VARCHAR2(20) CONSTRAINT UK_PRO_PRO UNIQUE
);

--criação da tabela produto com chave primária no campo cod_produto e chave estrangeira no campo cod_categoria + campo único em produto


CREATE TABLE ITEM_PRODUTO (
 COD_PRODUTO NUMBER,
 COD_MATERIA_PRIMA NUMBER,
 QUANTIDADE NUMBER CONSTRAINT NN_ITEPRO_QDE NOT NULL,
 CONSTRAINT PK_ITEPRO_CODPRO_COD_MAT PRIMARY KEY (COD_PRODUTO, COD_MATERIA_PRIMA),
 CONSTRAINT FK_ITEPRO_CODPRO
 FOREIGN KEY (COD_PRODUTO) REFERENCES PRODUTO(COD_PRODUTO),
 CONSTRAINT FK_ITEPRO_CODMATPRI
 FOREIGN KEY (COD_MATERIA_PRIMA) REFERENCES MATERIA_PRIMA(COD_MATERIA_PRIMA)
);

-- criação da tabela item produto com o campo quantidade proibido ser nulo, com chave primária composta no campo cod_produto + cod_materia_prima
-- com chave estrangeira no campo cod_produto referenciando a tabela produto + chave estrangeira no campo_materia prima referenciando a tabela materia_prima