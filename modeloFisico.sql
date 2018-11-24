-- Inclusão das instruções de criacão das estruturas DDL 
-- 24/11/2018

CREATE TABLE PAIS (
	id serial,
	nome varchar(80),
	PRIMARY KEY(id)
)

CREATE TABLE ESTADO (
	id serial,
	nome varchar(80),
	FK_PAIS_id serial,
	PRIMARY KEY(id), 
	FOREIGN KEY (FK_PAIS_id) REFERENCES PAIS(id)
)

CREATE TABLE CIDADE (
	id serial,
	nome varchar(80),
	FK_ESTADO_id serial,
	PRIMARY KEY(id), 
	FOREIGN KEY (FK_ESTADO_id) REFERENCES ESTADO(id)
)

CREATE TABLE PRAIA (
	id serial,
	nome varchar(80),
	FK_CIDADE_id serial,
	PRIMARY KEY(id), 
	FOREIGN KEY (FK_CIDADE_id) REFERENCES CIDADE(id)
)

CREATE TABLE TIPO_SENSOR (
	id serial,
	nome varchar(80),
	PRIMARY KEY (id)
)

CREATE TABLE FABRICANTE (
	id serial,
	nome varchar(80),
	PRIMARY KEY (id)
)

CREATE TABLE SENSOR (
	id serial,
	num_serie varchar(10),
	data_aquisicao date,
	data_prox_manutencao date,
	FK_FABRICANTE_id serial,
	PRIMARY KEY (id),
	FOREIGN KEY (FK_FABRICANTE_id) REFERENCES FABRICANTE(id) 
)

CREATE TABLE SENSOR_TIPO (
	FK_SENSOR_id serial,
	FK_TIPO_SENSOR_id serial,
	FOREIGN KEY (FK_SENSOR_id) REFERENCES SENSOR(id),
	FOREIGN KEY (FK_TIPO_SENSOR_id) REFERENCES TIPO_SENSOR(id)
)

CREATE TABLE BOIA (
	id serial,
	latitude float,
	longitude float,
	FK_PRAIA_id serial,
	PRIMARY KEY(id),
	FOREIGN KEY (FK_PRAIA_id) REFERENCES PRAIA(id)
)

CREATE TABLE BOIA_SENSOR_RELACAO_1 (
	id_boia_sensor serial,
	FK_BOIA_id serial,
	FK_SENSOR_id serial,
	PRIMARY KEY (id_boia_sensor),
	FOREIGN KEY (FK_BOIA_id) REFERENCES BOIA(id),
	FOREIGN KEY (FK_SENSOR_id) REFERENCES SENSOR(id)
)

CREATE TABLE HISTORICO (
	id_coleta serial,
	data_col date,
	hora time,
	valor float,
	FK_BOIA_SENSOR_RELACAO_1 serial,
	PRIMARY KEY (id_coleta),
	FOREIGN KEY (FK_BOIA_SENSOR_RELACAO_1) REFERENCES BOIA_SENSOR_RELACAO_1(id_boia_sensor)
)