CREATE DATABASE
	
CREATE TABLE paciente(
	id SERIAL PRIMARY KEY,
	nome_paciente VARCHAR (255) NOT NULL,
	CPF CHAR(11) NOT NULL,
	datanascimento DATE NOT NULL,
    sexo VARCHAR NOT NULL, 
    endereço VARCHAR(255) NOT NULL,
    telefone CHAR(11) NOT NULL,
	email VARCHAR(255) NOT NULL
	
);

SELECT *FROM paciente

CREATE TABLE medico(
	id INTEGER PRIMARY KEY,
	nome_medico VARCHAR(255) NOT NULL,
	especialidade VARCHAR (255) NOT NULL,
	telefone CHAR (11) NOT NULL,
	email VARCHAR(255) NOT NULL,
	disponibilidade_horario VARCHAR(255) NOT NULL,
	disponibilidade_turno VARCHAR(255) NOT NULL
);

SELECT *FROM medico
	
CREATE TABLE consultas(
	id SERIAL PRIMARY KEY,
	data_e_hora TIMESTAMP NOT NULL,
	motivo_da_consulta TEXT NOT NULL,
	diagnostico TEXT NOT NULL,
	prescricoes TEXT NOT NULL,
	FOREIGN KEY (id) REFERENCES paciente(id),
	FOREIGN KEY (id) REFERENCES medico(id)
		
);

SELECT *FROM consultas

CREATE TABLE exames(
	ID SERIAL PRIMARY KEY,
	tipo_exame VARCHAR NOT NULL,
	data_exame DATE NOT NULL,
	FOREIGN KEY (id) REFERENCES paciente(id)
	
);

SELECT *FROM exames

CREATE TABLE tratamentos(
	ID SERIAL PRIMARY KEY,
	descricao VARCHAR NOT NULL,
	data_inicio DATE NOT NULL,
	data_termino DATE NOT NULL,
	resultados TEXT NOT NULL,
	FOREIGN KEY (id) REFERENCES paciente(id),
	FOREIGN KEY (id) REFERENCES medico(id)
)

CREATE TABLE agendamento(
	ID SERIAL PRIMARY KEY,
	data_e_hora timestamp NOT NULL,
	FOREIGN KEY (id) REFERENCES paciente(id),
	FOREIGN KEY (id) REFERENCES medico(id)
);
	





