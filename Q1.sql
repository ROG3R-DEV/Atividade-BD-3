/* 
	1) Considerando a DATABASE disponível em https://github.com/DIOGOBRODRIGUES/DBP_3MA2021_1/blob/master/aula5.sql
    Desenvolva uma função que insere um novo aluno na tabela “Aluno” e retorne o nome do aluno Inserido. 
*/

DELIMITER %%
CREATE FUNCTION createStudent (
    code INT,
    birth_date DATE, 
    total_credits INT,
    mgp DOUBLE,
    student_name varchar(60),
    email varchar(30))
RETURNS varchar(60)
 DETERMINISTIC
    BEGIN
        INSERT INTO Aluno (`cod_curso`, `dat_nasc`, `tot_cred`, `mgp`, `nom_alun`, `email`)
		VALUES (code, birth_date, total_credits, mgp, student_name, email); 
        RETURN student_name;
	END%%
DELIMITER ;

/** CALL FUNCTION */
SELECT createStudent(Null, '2021-05-05', 20, 8.75, 'Ademiro', 'ademiro@packs.com') AS Aluno;
