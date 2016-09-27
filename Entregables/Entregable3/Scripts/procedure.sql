CREATE OR REPLACE PROCEDURE INCREASE_COUNT(idParticipante IN VARCHAR2, idJuego IN INTEGER, idCombinacion IN INTEGER) IS
BEGIN
  --- COUNTER ES IGUAL A CERO, PORQUE CON EL TRIGGER PASA A SER IGUAL AL VALOR SIGUIENTE EN LA COMBINACIÓN
  UPDATE TBL_PAR_JUEG_COMBINACIONES SET COUNTER = 0 where PAR_JUEG_PAR_ID = idParticipante AND PAR_JUEG_JUEG_ID = idJuego AND COMBINACIONES_ID = idCombinacion;
  COMMIT;
END;
/