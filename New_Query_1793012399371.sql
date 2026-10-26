DROP TABLE aula;
DROP TABLE horario_aula;

CREATE TABLE aula
(
 id INT PRIMARY KEY AUTO_INCREMENT,  
 serie CHAR(2) NOT NULL,  
 turma VARCHAR(6) NOT NULL,  
 componente VARCHAR(100) NOT NULL,  
 professor VARCHAR(100) NOT NULL
);

CREATE TABLE horario_aula
(
 id INT PRIMARY KEY AUTO_INCREMENT,  
 idaula INT NOT NULL,  
 dia_semana VARCHAR(7) NOT NULL,  
 ordem INT NOT NULL
);

ALTER TABLE horario_aula ADD FOREIGN KEY(idaula) REFERENCES aula (id);

INSERT INTO aula (serie, turma, componente, professor) VALUES 
("2º", "DSB", "Banco de Dados II", "Patrick");


DELETE FROM aula WHERE id = 23;

UPDATE aula SET professor = "Patrick"
WHERE id = 24;

SELECT* FROM aula WHERE professor="Patrick" FROM aula WHERE id = 10