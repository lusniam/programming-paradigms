suma(X,Y,Z):- Z is X*Y.
suma1(Z,X):- Z is X*X.
suma2(Z):- read(X),Z is X+6.
suma3(X,Y):- Z is X+Y, write(Z).
suma4:- read(X),read(Y), Z is sqrt(X+Y), write(Z).
ppr(X,_,_):- X<0,write('bok<0').
ppr(_,Y,_):- Y<0,write('bok<0').
ppr(X,Y,W):- X>0,Y>0,W is X*Y.

mul(0,_,0). % warunki graniczne 
mul(1,X,X). % warunki graniczne 
mul(X,Y,R) :- X>1,X1 is X-1, mul(X1,Y,R1), R is R1 + Y.