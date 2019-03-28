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



SELECT S.sid, S.sname
FROM Sailors S
WHERE NOT EXISTS((SELECT B.bid
        FROM Boats B
        WHERE B.bname = 'Interlake')
    MINUS
    (SELECT B.bid
        FROM Reservations R, Boats B
        WHERE R.sid = S.sid AND
        R.bid = B.bid AND
        B.bname = 'Interlake'));

SELECT B.bid
FROM Boats B
WHERE B.bname = 'Interlake';

SELECT B.bid
FROM Reservations R, Boats B
WHERE R.sid = S.sid AND
R.bid = B.bid AND
B.bname = 'Interlake';
