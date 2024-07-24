CREATE TABLE IF NOT EXISTS Nutricionista (
	Id_Nutricionista serial PRIMARY KEY,
	CRN varchar(20) NOT NULL,
	Especialidade varchar(100),
	Tempo_de_Experiencia integer
);

DROP Table Nutricionista;

CREATE TABLE IF NOT EXISTS Paciente (
	Id_Paciente serial PRIMARY KEY,
	Nome varchar(100) NOT NULL,
	Data_Nascimento date,
	CPF varchar(14) NOT NULL,
	Telefone varchar(20),
	Email varchar(100) 
);

DROP Table Paciente;

CREATE TABLE IF NOT EXISTS Consulta (
	Id_Consulta serial,
	Id_Nutricionista integer NOT NULL REFERENCES Nutricionista(Id_Nutricionista),
	Id_Paciente integer NOT NULL REFERENCES Paciente(Id_Paciente),
	Data_Consulta date,
	Observacoes text
	);

DROP Table Consulta;