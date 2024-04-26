[owoce2].
ciezszy(pomarancz,mandarynka).
ciezszy(arbuz,X).
ciezszy(arbuz,X),ciezszy(X,Y).
ciezszy(X,Y),ciezszy(Y,X).
lzejszy(X,Y):-ciezszy(Y,X).

[piernik].
lubi(jas,malgosia),lubi(malgosia,jas).
lubi(jas,X),lubi(malgosia,X).
lubi(jas,_).
lubi(_,piernik).

[auto].
maAuto(piotr).
posiada(piotr,auto(X,Y)),posiada(marcin,auto(G,F)).