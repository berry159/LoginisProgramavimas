
studentas(ingrida,1).
studentas(tomas,2).
studentas(rita,3).
studentas(marius,3).
studentas(egle,4).

yraVyresnis(tomas,ingrida).
yraVyresnis(rita,tomas).
yraVyresnis(marius,rita).
yraVyresnis(egle,marius).

/*„studentas A yra jaunesnis už aukštesnio kurso studenta B“. */
jaunesnis(StudA,StudB):-
    studentas(StudA,Kursas1),
    studentas(StudB,Kursas2),
    Kursas1 < Kursas2.

arJaunesnis(StudA,StudB):-
    yraVyresnis(StudA,StudB).

arJaunesnis(StudA,StudB):-
    yraVyresnis(StudA,X),
    arJaunesnis(X,StudB).

/*pvz.: jaunesnis(marius,egle)  true
 * jaunesnis(egle,ingrida)      false*/

/*Duotas naturinis skaicius N. Naudodami rekusyvuji algoritma, raskite:
N-aji Lukaso skaiciu.*/
lucas(0, X) :- X is 2.
lucas(1, X) :- X is 1.
lucas(N, X) :-
    N >= 2,
    N1 is N - 1,
    N2 is N - 2,
    lucas(N1, X1),
    lucas(N2, X2),
    X is X1 + X2.
/*pvz.: lucas(2,X)  X=3
 * lucas(30, X)  X=1860498*/


