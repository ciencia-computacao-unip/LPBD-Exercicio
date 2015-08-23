DROP TABLE aluno;

CREATE TABLE aluno(
ra_aluno CHAR(6) NOT NULL,
alu_nome VARCHAR(25),
primary key (ra_aluno)
);

CREATE TABLE departamento(
cd_depto CHAR(3) NOT NULL,
nm_depto VARCHAR(36),
cd_gerente CHAR(6),
cd_repdepto CHAR(3) NOT NULL,
cd_local CHAR(5)
);

CREATE TABLE empregado(
cd_empregado CHAR(6) NOT NULL,
nm_nome1 VARCHAR(15) NOT NULL,
nm_nome2 VARCHAR(10),
nm_sobrenome VARCHAR(15) NOT NULL,
cd_depto CHAR(3),
nr_telefone VARCHAR(13),
dt_admissao DATE,
nm_cargo VARCHAR(20),
nivel_educ INTEGER,
cd_sexo CHAR(1),
dt_nascimento DATE,
vlr_salario REAL,
vlr_bonus REAL,
vlr_com REAL
);

CREATE TABLE projeto(
cd_projeto CHAR(6),
nm_projeto VARCHAR(25),
cd_deptoresp CHAR(3),
cd_respproj CHAR(6),
dt_iniproj DATE,
dt_fimproj DATE,
cd_programa CHAR(6)
);


CREATE TABLE atividade(
cd_empregado CHAR(6),
cd_projeto CHAR(6),
nr_atividade SMALLINT,
qtdehorasproj REAL,
dt_iniativ DATE,
dt_fimativ DATE
);
