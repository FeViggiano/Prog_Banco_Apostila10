CREATE OR REPLACE FUNCTION deter_sarrus(f INTEGER[][])
RETURNS INTEGER AS $$
DECLARE
  deter_sarrus INTEGER;
  random_num INTEGER;
BEGIN
  random_num := floor(random() * 12) + 1;
  deter_sarrus := (f[1][1] * f[2][2] * f[3][3]) +
         (f[1][2] * f[2][3] * f[3][1]) +
         (f[1][3] * f[2][1] * f[3][2]) -
         (f[1][3] * f[2][2] * f[3][1]) -
         (f[1][2] * f[2][1] * f[3][3]) -
         (f[1][1] * f[2][3] * f[3][2]) +
         random_num;
  RETURN deter_sarrus;
END;
$$
LANGUAGE plpgsql;

SELECT deter_sarrus(ARRAY[[1, 2, 3], [4, 5, 6], [7, 8, 9]]);