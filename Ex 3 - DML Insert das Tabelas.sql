SELECT * FROM Nutricionista;
SELECT * FROM Paciente;
SELECT * FROM Consulta;

----------------------------------------------------------------------------------------
INSERT INTO Nutricionista (CRN, Especialidade, Tempo_de_Experiencia)
	VALUES ('CRN-5/1558', 'Nutrição Clínica', 5),
	       ('CRN-8/1432', 'Nutrição Hospitalar', 10),
	       ('CRN-10/2512', 'Nutrição Esportiva', 2);

-------------------------------------------------------------------------------------------
INSERT INTO Paciente (Nome, Data_Nascimento, CPF, Telefone, Email)
	VALUES ('Maria Aparecida', '14/07/1982', '123.456.789-04', '(48) 95789-1010', 'ma@testesenai.com'),
           ('Tereza Cristina', '17/06/1979', '321.567.628-04', '(54) 98758-1010', 'tereza@testesenai.com'),
           ('Ana Botafogo', '31/05/1971', '741.852.963-04', '(11) 93030-1010', 'anabf@testesenai.com');

------------------------------------------------------------------------------------------
INSERT INTO Consulta (Id_Nutricionista, Id_Paciente, Data_Consulta, observacoes)
	VALUES (4, 5, '03/05/2024', 'Dieta Low Carb'),
           (5, 6, '05/06/2024', 'Dieta Normal'),
           (6, 4, '10/06/2024', 'Dieta rica em proteína');


