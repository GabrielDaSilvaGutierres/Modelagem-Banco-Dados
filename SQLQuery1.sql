--CREATE  DATABASE teste1 
USE teste1 
CREATE TABLE Cidade (
cd_cidade int not null identity(1,1),
nm_Cidade varchar(30) not null,
CONSTRAINT pk_cidade PRIMARY KEY (cd_cidade)
)
 
CREATE TABLE fatec (
cd_teste        int not null IDENTITY(10,1),
ds_teste        varchar(10),
ds_teste1       char(10),
vlr_preco       decimal(10,2),
dt_teste        smalldatetime,
cd_CidadeFatec  int, 
CONSTRAINT pk_fatec PRIMARY KEY (cd_teste),
CONSTRAINT fk_fatecCidade FOREIGN KEY (cd_CidadeFatec)
                          REFERENCES Cidade(cd_Cidade)
) -- fim table
 
 
INSERT INTO fatec VALUES ('DS1','TST',100.50,'2025/05/06')
SELECT * FROM fatec
--DROP TABLE FATEC2
 
--DROP TABLE fatec