SELECT * FROM Nutricionista;
SELECT * FROM Paciente;
SELECT * FROM Consulta;

--Definindo as FK com ON DELETE CASCADE para conseguir fazer os DELETES
ALTER TABLE Consulta
DROP CONSTRAINT IF EXISTS consulta_id_nutricionista_fkey,
ADD CONSTRAINT consulta_id_nutricionista_fkey 
FOREIGN KEY (Id_Nutricionista) 
REFERENCES Nutricionista(Id_Nutricionista) 
ON DELETE CASCADE;

ALTER TABLE Consulta
DROP CONSTRAINT IF EXISTS consulta_id_paciente_fkey,
ADD CONSTRAINT consulta_id_paciente_fkey 
FOREIGN KEY (Id_Paciente) 
REFERENCES Paciente(Id_Paciente) 
ON DELETE CASCADE;

UPDATE Nutricionista
SET Especialidade = 'Nutrição Infantil'
WHERE CRN = 'CRN-8/1432';

UPDATE Paciente
SET Telefone = '(48) 98765-4321'
WHERE Nome = 'Maria Aparecida';

UPDATE Consulta
SET Data_Consulta = '04/05/2024'
WHERE Id_Nutricionista = 4 AND Id_Paciente = 5;

DELETE FROM Nutricionista
WHERE CRN = 'CRN-10/2512';

DELETE FROM Paciente
WHERE CPF = '741.852.963-04';

DELETE FROM Consulta
WHERE Id_Nutricionista = 4 AND Id_Paciente = 5;
