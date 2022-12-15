/* Elze Radvilaite Informatika 3 kursas 2 grupe variantai 1.2; 2.7; 3.7; 4.1*/

/*1. Paprasti predikatai su sveikuju skaiciu sarašais:
1.2 lyginiai(S) - teisingas, kai visi duoto sveikuju skaiciu sarašo S elementai yra lyginiai.*/

lyginiai([]).
lyginiai([H|T]) :-
    0 is mod(H,2), lyginiai(T).

/*pvz.: lyginiai([4,18,24,10]).
true.*/

/*-------------------------------------------------------------*/

/*2. Paprasti nearitmetiniai predikatai:
 *2.7. posarasis(S1,S2) - sarašas S2 susideda iš (gal but ne visu)
 * sarašo S1 elementu, išdestytu ta pacia tvarka, kaip ir saraše S1.
 * Kitaip tariant, iš sarašo S1 išmetus tam tikrus elementus, galime
 * gauti saraša S2.*/

is_found_in([H], H, []).
is_found_in([H| T], H, T).
is_found_in([_| T], H2, T1) :-
  is_found_in(T, H2, T1).

posarasis(_, []).
posarasis(S1, [H2| T2]) :-
  is_found_in(S1, H2, NT),
  posarasis(NT, T2), !.

/*pvz.: posarasis([1,8,3,5],[1,3]).
 * true.*/

/*----------------------------------------------------------------*/

/*3. Sudetingesni predikatai:
3.7. keisti(S,K,R) - duotas sarašas S. Duotas sarašas K, nusakantis
keitini ir susidedantis iš elementu pavidalo k(KeiciamasSimbolis,PakeistasSimbolis).
R - rezultatas, gautas pritaikius sarašui S keitini K.*/

k(_, _).
keitinys(Simbolis, KeiciamasSimbolis, _, Gauta):-
    Simbolis \= KeiciamasSimbolis,
    Gauta = Simbolis.
keitinys(Simbolis, KeiciamasSimbolis, Keitimas, Gauta):-
    Simbolis == KeiciamasSimbolis,
    Gauta = Keitimas.
keitinys(Simbolis, KeiciamasSimbolis, _, _):-
    Simbolis \= KeiciamasSimbolis.

keitinioargumentai(Keitinys, X, Y):-
    k(X, Y) = Keitinys.

keitimas([], _, _).
keitimas([H|T], HSar, GautasSimbolis):-
    keitimas(T, HSar, GautasSimbolis),
    keitinioargumentai(H, KeiciamasSimbolis, PakeistasSimbolis),
    keitinys(HSar, KeiciamasSimbolis, PakeistasSimbolis, GautasSimbolis).

pradinissarasas([], _, []).
pradinissarasas([HSar|TSar], Keitinys, [Pakeistas|Rezultatas]):-
    pradinissarasas(TSar, Keitinys, Rezultatas),
    keitimas(Keitinys, HSar, Pakeistas).

keisti(Sar, Keit, Ats):-
    pradinissarasas(Sar, Keit, Ats), !.

/*pvz.:keisti([a,c,b],[k(a,x),k(b,y)], R). - R = [x, c, y].
keisti([a,w,c,x,e,y,g,z],[k(w,b),k(x,d),k(y,f),k(z,h)],R). - R = [a, b, c, d, e, f, g, h].*/

/*---------------------------------------------------------------------*/

/*4.
 * 4.1. Operacijos su naturaliaisiais skaiciais, išreikštais skaitmenu
 * sarašais. Skaitmenu sarašo elementai turi buti naturalus skaiciai nuo
 * 0 iki 9 (ne simboliai '0', '1',...).*/

sarasas_2_skaicius([SarasoPradzia|SarasoPabaiga], SkaiciusN, Pradzia):-
	sarasas_2_skaicius(SarasoPabaiga, Skaicius, Pradzia),
	SkaiciusN is Skaicius * 10 + SarasoPradzia.

sarasas_2_skaicius([],Z,Z).

des_skaic(Sarasas, Skaicius):-
	reverse(Sarasas, PerverstasSarasas, []),
	sarasas_2_skaicius(PerverstasSarasas, SkaiciusIsSaraso, 0),
	Skaicius is SkaiciusIsSaraso.


 reverse([],Z,Z).

 reverse([H|T],Z,Acc) :- reverse(T,Z,[H|Acc]).

/*pvz.: des_skaic([1,9,8,5],K).
 * K = 1985.*/



