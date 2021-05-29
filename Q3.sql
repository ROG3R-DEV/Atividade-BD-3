/*
    3) Faça um procedimento em MYSQL que use a estrutura de repetição REPEAT
    para concatenar números de 1 a 9 (função concatenar em MySQL “CONCAT”)
*/

DELIMITER //
CREATE PROCEDURE numberCounterConcat()
BEGIN
	DECLARE counter INT DEFAULT 0;
    DECLARE result varchar(60) DEFAULT "";
    REPEAT
		SET counter = counter + 1;
		IF counter = 9 THEN 
			SET result = CONCAT(result, counter);
		ELSE
			SET result = CONCAT(result, counter, ', ');
		END IF;
	UNTIL counter = 9
    END REPEAT;
    SELECT result as 'result';
END//
DELIMITER ;

/** CALL PROCEDURE */
CALL numberCounterConcat();

