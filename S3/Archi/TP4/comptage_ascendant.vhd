LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;


ENTITY compteur_up IS
  PORT( clk : IN STD_LOGIC;
        dataOut : OUT STD_LOGIC_VECTOR(2 DOWNTO 0) := "000");
END ENTITY compteur_up;

ARCHITECTURE rtl OF compteur_up IS
  TYPE CodeDeComptage IS ARRAY(0 TO 4) OF STD_LOGIC_VECTOR(2 DOWNTO 0);
  CONSTANT CCV : CodeDeComptage :=("000","001","010","011","100");
BEGIN
  PROCESS(clk)
    VARIABLE pos : INTEGER :=0;
    BEGIN
      IF RISING_EDGE(clk) THEN
        pos := pos+1;
      END IF;
  END PROCESS;
END ARCHITECTURE;
