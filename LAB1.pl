


asmuo(ona, moteris, 95, tenisas).
asmuo(jonas, vyras, 14, futbolas).
asmuo(petras, vyras, 14, futbolas).
asmuo(judita, moteris, 70, keliones).

asmuo(tomas, vyras, 55, keliones).
asmuo(inga, moteris, 50, tenisas).

asmuo(patricija, moteris, 1, tenisas).

mama(ona, tomas).
mama(judita, inga).
mama(inga, patricija).

pora(jonas, ona).
pora(petras, judita).
pora(tomas, inga).


/*sesuras(Sesuras, Marti) - Pirmasis asmuo (Sesuras) yra antrojo (Marti) šešuras (vyro tėvas); */
sesuras(Sesuras, Marti) :-
    pora(Sesuras, X),
    pora(Y, Marti),
    mama(X, Y).

/*28. turi_vaiku(TevasMama) - Asmuo TevasMama turi vaikų; */
turi_vaiku(TevasMama) :- 
    mama(TevasMama, _);
    pora(TevasMama, Motina), mama(Motina, _).

/*klaida_duomenyse(Asmuo) - Asmens Asmuo vienas iš tėvų yra už jį jaunesnis; */
klaida_duomenyse(Asmuo) :- 
	mama(Mama, Asmuo),
	asmuo(Asmuo, _, VaikoAmzius,_),
	asmuo(Mama, _, MamosAmzius, _),
	VaikoAmzius > MamosAmzius;
	mama(Mama, Asmuo),
	pora(Tetis, Mama),
	asmuo(Asmuo, _, VaikoAmzius,_),
	asmuo(Tetis, _, TevoAmzius, _),
	VaikoAmzius > TevoAmzius.

/*at_suk(Asmuo, N) - Asmuo Asmuo atšventė N apvalių sukakčių; */
at_suk(Asmuo, N):-
    asmuo(Asmuo, _, Amzius, _),
    N is div(Amzius, 10).



/* Testai

    sesuras(jonas, inga) - true
    sesuras(tomas, patricija) - false
    turi_vaiku(one)-true
    turi_vaiku(patricija) - false
	klaida_duomenyse(tomas) - true
    klaida_duomenyse(patricija) - false
	at_suk(tomas, 5) - true
    daugiavaike(patricija, 10) - false
*/
