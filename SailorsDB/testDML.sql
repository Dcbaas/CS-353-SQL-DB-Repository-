SPOOL testDML.out
SET ECHO ON

SELECT S1.sid, S1.sname, S2.sid, S2.sname
FROM
Sailors S1, Sailors S2, Reservations R1, Reservations R2
WHERE S1.sid = R1.sid AND
S2.sid = R2.sid AND
R1.forDate = R2.forDate AND
S1.sid < S2.sid;


SELECT S.sid, S.sname, COUNT(*)
FROM Reservations R, Sailors S
WHERE S.sid = R.sid AND
S.rating > 2;

--GROUP BY S.sid, S.sname;