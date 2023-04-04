--Gerar Inteiros de 50 a -50 

DO $$
DECLARE
	num INT;
BEGIN
	num := floor(random() * 101) - 50;
	RAISE NOTICE 'Número aleatório: %', num;
END;
$$

--Gerar Inteiros de  20 a 50 
DO $$
DECLARE
	num INT;
BEGIN
	num := floor(random() * 30) + 20;
	RAISE NOTICE 'Número aleatório: %', num;
END;
$$


--Gerar Inteiros de 1 a 100
DO $$
DECLARE
	num INT;
BEGIN
	num := floor(random() * 101) - 1;
	RAISE NOTICE 'Número aleatório: %', num;
END;
$$



