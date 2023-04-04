--Gerar números de -50 a 50
DO $$
DECLARE
  num INT;
BEGIN
  FOR i IN 1..50 LOOP
    num := floor(random()*101 - 50);
	RAISE NOTICE '%', num;
  END LOOP;
END;
$$ 


-- Gerar números de 20 a 50
DO $$
DECLARE
  num INT;
BEGIN
  FOR i IN 1..50 LOOP
    num := floor(random()*30 + 20);
	RAISE NOTICE '%', num;
  END LOOP;
END;
$$ 


-- Gerar números entre 1 a 100
DO $$
DECLARE
  num INT;
BEGIN
  FOR i IN 1..50 LOOP
    num := floor(random()*101 - 1);
	RAISE NOTICE '%', num;
  END LOOP;
END;
$$ 