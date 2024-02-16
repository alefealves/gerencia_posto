/******************************************************************************/
/*           Generated by IBExpert 2024.1.22.1 16/02/2024 12:00:12            */
/******************************************************************************/

SET SQL DIALECT 3;

SET NAMES NONE;

CREATE DATABASE 'C:\Dados\LMC.FDB'
USER 'SYSDBA' PASSWORD 'masterkey'
PAGE_SIZE 8192
DEFAULT CHARACTER SET NONE COLLATION NONE;



/******************************************************************************/
/*                                 Generators                                 */
/******************************************************************************/

CREATE GENERATOR GEN_ABASTECIMENTO_ID START WITH 0 INCREMENT BY 1;
SET GENERATOR GEN_ABASTECIMENTO_ID TO 21;

CREATE GENERATOR GEN_BOMBA_ID START WITH 0 INCREMENT BY 1;
SET GENERATOR GEN_BOMBA_ID TO 4;

CREATE GENERATOR GEN_COMBUSTIVEL_ID START WITH 0 INCREMENT BY 1;
SET GENERATOR GEN_COMBUSTIVEL_ID TO 2;

CREATE GENERATOR GEN_TANQUE_ID START WITH 0 INCREMENT BY 1;
SET GENERATOR GEN_TANQUE_ID TO 2;



/******************************************************************************/
/*                                   Tables                                   */
/******************************************************************************/



CREATE TABLE ABASTECIMENTO (
    CODIGO        INTEGER NOT NULL,
    CODIGO_BOMBA  INTEGER NOT NULL,
    LITROS        NUMERIC(15,4),
    VALOR         NUMERIC(15,4),
    IMPOSTO       NUMERIC(15,4),
    DATA          TIMESTAMP
);

CREATE TABLE BOMBA (
    CODIGO              INTEGER NOT NULL,
    NOME                VARCHAR(10),
    CODIGO_TANQUE       INTEGER NOT NULL,
    CODIGO_COMBUSTIVEL  INTEGER
);

CREATE TABLE COMBUSTIVEL (
    CODIGO       INTEGER NOT NULL,
    NOME         VARCHAR(15),
    VALOR_LITRO  NUMERIC(15,4),
    IMPOSTO      NUMERIC(15,4)
);

CREATE TABLE TANQUE (
    CODIGO        INTEGER NOT NULL,
    NOME          VARCHAR(10),
    COMBUSTIVEL   VARCHAR(15),
    CAPACIDADE    FLOAT,
    VOLUME_ATUAL  FLOAT
);



/******************************************************************************/
/*                                   Views                                    */
/******************************************************************************/


/* View: VOLUME_VENDIDO */
CREATE VIEW VOLUME_VENDIDO(
    DIA,
    TANQUE,
    BOMBA,
    VALOR)
AS
select * from (
select cast(a.data as date) as dia, t.nome as tanque, b.nome as bomba, sum(a.valor) as valor
from abastecimento a
join bomba b on a.codigo_bomba = b.codigo
join tanque t on t.codigo = b.codigo_tanque
group by cast(a.data as date),t.nome,b.nome)
order by 1,2,3
;




/******************************************************************************/
/*                                Primary keys                                */
/******************************************************************************/

ALTER TABLE ABASTECIMENTO ADD CONSTRAINT PK_ABASTECIMENTO PRIMARY KEY (CODIGO, CODIGO_BOMBA);
ALTER TABLE BOMBA ADD CONSTRAINT PK_BOMBA PRIMARY KEY (CODIGO, CODIGO_TANQUE);
ALTER TABLE COMBUSTIVEL ADD CONSTRAINT PK_COMBUSTIVEL PRIMARY KEY (CODIGO);
ALTER TABLE TANQUE ADD CONSTRAINT PK_TANQUE PRIMARY KEY (CODIGO);


/******************************************************************************/
/*                                Foreign keys                                */
/******************************************************************************/

ALTER TABLE BOMBA ADD CONSTRAINT CODIGO_TANQUE_FK FOREIGN KEY (CODIGO_TANQUE) REFERENCES TANQUE (CODIGO);


/******************************************************************************/
/*                                  Triggers                                  */
/******************************************************************************/



SET TERM ^ ;



/******************************************************************************/
/*                            Triggers for tables                             */
/******************************************************************************/



/* Trigger: ABASTECIMENTO_BI */
CREATE TRIGGER ABASTECIMENTO_BI FOR ABASTECIMENTO
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.codigo is null) then
     new.codigo = gen_id(gen_abastecimento_id,1);

  if (new.data is null) then
      new.data = current_timestamp;

  update tanque set tanque.volume_atual = (tanque.volume_atual - :new.litros)
  where tanque.codigo = (select bomba.codigo_tanque from bomba where bomba.codigo = :new.codigo_bomba);

end
^

/* Trigger: BOMBA_BI */
CREATE TRIGGER BOMBA_BI FOR BOMBA
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.codigo is null) then
    new.codigo = gen_id(gen_bomba_id,1);
end
^

/* Trigger: COMBUSTIVEL_BI */
CREATE TRIGGER COMBUSTIVEL_BI FOR COMBUSTIVEL
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.codigo is null) then
    new.codigo = gen_id(gen_combustivel_id,1);
end
^

/* Trigger: TANQUE_BI */
CREATE TRIGGER TANQUE_BI FOR TANQUE
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.codigo is null) then
    new.codigo = gen_id(gen_tanque_id,1);
end
^
SET TERM ; ^
