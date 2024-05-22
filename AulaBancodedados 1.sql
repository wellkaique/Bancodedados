#CRIAR A BASE DE DADOS
CREATE DATABASE;
#DELETANDO A BASE DE DADOS
DROP DATABASE;

DROP TABLE	
#Criando uma tabela simples
CREATE TABLE aluno(
	id integer PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	CPF CHAR(11) NOT NULL,
	observacao TEXT NOT NULL, 
	idade INTEGER NOT NULL,
	bolsa numeric(10,2)NOT NULL
	
);

CREATE TABLE curso(
	id integer PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);

#consultando a tabeta curso

SELECT *FROM curso;

#Adicionando registro na tabela curso
INSERT INTO curso values(10,'Engenharia');
INSERT INTO curso values(20,'ADS');
INSERT INTO curso values(30,'Automação');

#CRIANDO A TABELA ALUNO_CURSO
CREATE TABLE Aluno_curso(
	id_curso INTEGER,
	id_aluno INTEGER,
	PRIMARY KEY(id_curso, id_aluno)
	FOREIGN KEY(id_aluno)
	REFERENCES(id_curso)
	FOREIGN KEY (id_curso)
	REFERENCES Curso(id)
)


#exibir a tabela
SELECT *FROM aluno;

#inserir valores na tabela
INSERT INTO aluno(id,nome,CPF, observacao, idade,bolsa)
VALUES(12,'Kaique',02681423279,'Lindo',27,800);

INSERT INTO aluno(id,nome,CPF, observacao, idade,bolsa)
VALUES(1,'Vaniza',40028922000,'Foxcon',27,400);

INSERT INTO aluno(id,nome,CPF, observacao, idade,bolsa)
VALUES(2,'Vinnicius',1234567891,'Comunidade',20,100);

INSERT INTO aluno(id,nome,CPF, observacao, idade,bolsa)
VALUES(3,'Raquel',2222222222,'Professora',35,5000);

#comando para atualizar o banco de acordo com a posição na tabela
UPDATE aluno
SET nome = 'Wellington'
where id = 2;

#Apagando um registro de uma tabela
DELETE FROM aluno
WHERE nome = 'carlos';

#consultar campos especificos

SELECT nome as "aluno", idade
FROM aluno;

#procurar iniciais

SELECT nome as "aluno",idade
FROM aluno
WHERE nome LIKE "V%"

#Buscando campos nulos

SELECT nome as "Aluno", cpf
FROM aluno
WHERE cpf IS Null;

#Filtrando campo numerico

SELECT nome as "Aluno", bolsa
FROM aluno
WHERE bolsa BETWEEN 800 and 1000;