--Comando para criar base de dados
CREATE DATABASE Clinica;

--comando para criar tabela
CREATE TABLE Pacientes (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    data_nascimento DATE,
    sexo CHAR(1),
    endereco VARCHAR(255),
    telefone VARCHAR(20),
    email VARCHAR(100),
    doencas_preexistentes TEXT,
    alergias TEXT,
    medicamentos_em_uso TEXT
);
--Criando tabela de médico
CREATE TABLE Medicos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    especialidade VARCHAR(100),
    telefone VARCHAR(20),
    email VARCHAR(100)
);

#Criando tabela de consulta
CREATE TABLE Consultas (
    id INT PRIMARY KEY,
    paciente_id INT,
    medico_id INT,
    data_hora TIMESTAMP,
    motivo TEXT,
    diagnostico TEXT,
    prescricoes TEXT,
    FOREIGN KEY (paciente_id) REFERENCES Pacientes(id),
    FOREIGN KEY (medico_id) REFERENCES Medicos(id)
);
#Criando tabela de exame
CREATE TABLE Exames (
    id INT PRIMARY KEY,
    paciente_id INT,
    tipo_exame VARCHAR(100),
    data_exame DATE,
    resultados TEXT,
    FOREIGN KEY (paciente_id) REFERENCES Pacientes(id)
);

--Criando a tabela de tratamento
	CREATE TABLE Tratamentos (
    id INT PRIMARY KEY,
    paciente_id INT,
    descricao TEXT,
    data_inicio DATE,
    data_termino DATE,
    resultados TEXT,
    FOREIGN KEY (paciente_id) REFERENCES Pacientes(id)
);

CREATE TABLE Agendamentos (
    id INT PRIMARY KEY,
    paciente_id INT,
    medico_id INT,
    data_hora TIMESTAMP,
    status VARCHAR(50),
    FOREIGN KEY (paciente_id) REFERENCES Pacientes(id),
    FOREIGN KEY (medico_id) REFERENCES Medicos(id)
);


SELECT *FROM Paciente;











	
	


--Comando de consulta
SELECT *FROM Paciente;

--comando para inserir registro na tavela Paciente
INSERT INTO Paciente VALUES(1,'Raquel Oliveira','1989/04/29','F','Rua bonança','8255','rachellcardoso@gmail.com');


