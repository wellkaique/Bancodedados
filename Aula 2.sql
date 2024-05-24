-- Criar a tabela aluno
CREATE TABLE aluno(
    id INTEGER PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    CPF CHAR(11) NOT NULL,
    observacao TEXT NOT NULL, 
    idade INTEGER NOT NULL,
    bolsa NUMERIC(10,2) NOT NULL
);

-- Criar a tabela curso
CREATE TABLE curso(
    id INTEGER PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

-- Criar a tabela aluno_curso
CREATE TABLE aluno_curso(
    id_curso INTEGER,
    id_aluno INTEGER,
    PRIMARY KEY(id_curso, id_aluno),
    FOREIGN KEY(id_aluno) REFERENCES aluno(id),
    FOREIGN KEY(id_curso) REFERENCES curso(id)
);

-- Inserir registros na tabela curso
INSERT INTO curso (id, nome) VALUES
(10, 'Engenharia'),
(20, 'ADS'),
(30, 'Automação');

-- Inserir registros na tabela aluno
INSERT INTO aluno (id, nome, CPF, observacao, idade, bolsa) VALUES
(12, 'Kaique', '02681423279', 'Lindo', 27, 800),
(1, 'Vaniza', '40028922000', 'Foxcon', 27, 400),
(2, 'Vinnicius', '1234567891', 'Comunidade', 20, 100),
(3, 'Raquel', '2222222222', 'Professora', 35, 5000);

-- Inserir registros na tabela aluno_curso
INSERT INTO aluno_curso (id_aluno, id_curso) VALUES
(12, 10),  -- Kaique em Engenharia
(1, 20),   -- Vaniza em ADS
(2, 30),   -- Vinnicius em Automação
(3, 10);   -- Raquel em Engenharia

-- Consultar todas as tabelas
SELECT * FROM aluno;
SELECT * FROM curso;
SELECT * FROM aluno_curso;

-- Usar JOIN para exibir alunos com cursos
SELECT aluno.nome AS "nome do aluno", aluno.idade, curso.nome AS "nome do curso"
FROM aluno
LEFT JOIN aluno_curso ON aluno.id = aluno_curso.id_aluno
LEFT JOIN curso ON aluno_curso.id_curso = curso.id;

--Script de ordenação
SELECT *FROM aluno
ORDER BY nome;
LIMIT 3; -- comando para exibir planilha até o número 3
ORDER BY nome
OFFSET;
--funcao de agregração

--COUNT - conta a quantidade de registros em uma tabela
--SUM - Soma os registros de uma coluna
--MAX - Retorna o maior registro de uma coluna
--MIN - Retorna o menor valor de registro de uma coluna
-- AVG - Retornar a media de registro de uma coluna;

SELECT MIN (idade)
from aluno


