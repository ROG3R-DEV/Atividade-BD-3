/*
	2) Desenvolva um procedimento em MYSQL que imprima a sequênciade
    5 números utilizando a estrutura de repetição WHILE, saída esperada abaixo.
*/

DELIMITER //
CREATE PROCEDURE numberCounter()
BEGIN
	DECLARE counter INT DEFAULT 0;
	DECLARE result varchar(255) DEFAULT '';
    WHILE (counter < 5) DO
		SET counter =  counter + 1;
        IF counter = 5 THEN 
			SET result = CONCAT(result, counter);
		ELSE
			SET result = CONCAT(result, counter, ', ');
		END IF;
	END WHILE;
	SELECT result as 'str';
END //
DELIMITER ;

/** CALL PROCEDURE */
CALL numberCounter();