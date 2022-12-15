# LoginisProgramavimas
1 ND: 
21. sesuras(Sesuras, Marti) - Pirmasis asmuo (Sesuras) yra antrojo (Marti) šešuras (vyro tėvas);
28. turi_vaiku(TevasMama) - Asmuo TevasMama turi vaikų;
40. klaida_duomenyse(Asmuo) - Asmens Asmuo vienas iš tėvų yra už jį jaunesnis;
44. at_suk(Asmuo, N) - Asmuo Asmuo atšventė N apvalių sukakčių;

2 ND:
2.6. „studentas A yra jaunesnis už aukštesnio kurso studentą B“.
4.2. Duotas natūrinis skaičius N. Naudodamni rekusyvųjį algoritmą, raskite: N-ąjį Lukaso skaičių.

3 ND:
1.2. lyginiai(S) - teisingas, kai visi duoto sveikųjų skaičių sąrašo S elementai yra lyginiai. Pavyzdžiui:
?- lyginiai([4,18,24,10]).
2.7. posarasis(S1,S2) - sąrašas S2 susideda iš (gal būt ne visų) sąrašo S1 elementų, išdėstytų ta pačia tvarka, kaip ir sąraše S1. Kitaip tariant, iš sąrašo S1 išmetus tam tikrus elementus, galime gauti sąrašą S2. Pavyzdžiui:
?- posarasis([1,8,3,5],[1,3]).
true.
3.7. keisti(S,K,R) - duotas sąrašas S. Duotas sąrašas K, nusakantis keitinį ir susidedantis iš elementų pavidalo k(KeiciamasSimbolis, PakeistasSimbolis). R - rezultatas, gautas pritaikius sąrašui S keitinį K. Pavyzdžiui:
?- keisti([a,c,b],[k(a,x),k(b,y)],R).
R = [x,c,y].
4.1. des_skaic(S,K) - dešimtainių skaitmenų sąrašas S atitinka skaičių K. Pavyzdžiui:
?- des_skaic([1,9,8,5],K).
K = 1985.
