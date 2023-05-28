CREATE TABLE
  INSTRUTOR (
    INS_ID INT PRIMARY KEY NOT NULL,
    LASTNAME VARCHAR(50) NOT NULL,
    FIRSTNAME VARCHAR(50) NOT NULL,
    CITY VARCHAR (40),
    COUNTRY CHAR(2)
  );

INSERT
  INTO  INSTRUTOR
(INS_ID, LASTNAME, FIRSTNAME, CITY, COUNTRY)
  VALUES
(1, 'AHUJA', 'RAV', 'TORONTO', 'CA') ,
(2,'CHONG','RAUL','TORONTO','CA'),
(3,'VASUDEVAN','HIMA','CHICAGO','US');

SELECT *
  FROM INSTRUTOR;

 /* selecione o nome, sobrenome e país onde a cidade é Toronto */
SELECT FIRSTNAME, LASTNAME, COUNTRY
  FROM INSTRUTOR
  WHERE CITY='TORONTO';
/* atualize a linha de Rav Ahuja e mude sua cidade para Markham.*/

UPDATE INSTRUTOR
  SET CITY = 'MARKHAM '
  WHERE INS_ID=1;
  
/* exclua a linha de Raul Chong da tabela.*/
DELETE 
FROM 
INSTRUTOR
  WHERE INS_ID=2
