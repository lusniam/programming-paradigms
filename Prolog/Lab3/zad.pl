suma5(X,Y,Z) :- X=<6,Z is X+Y.

suma6(X,Y,Z) :- X<6, Z is X+Y.
suma6(X,Y,Z) :- X=6, Z is X+Y.

%suma8(X,Y,Z) :- X>=6, !, Z is Y.
%suma8(X,Y,Z) :- Z is X+Y.


silnia(N,W) :- 
    N>1, 
    N1 is N-1, 
    silnia(N1,W1), 
    W is N*W1.
silnia(1,1).
silnia(0,1).


silniaBU(N,W) :- silniaBU(0,1,N,W).
silniaBU(N,W,N,W) :- !.
silniaBU(N1,F1,N,F) :-
    N1<N,
    N2 is N1+1,
    F2 is N2*F1,
    silniaBU(N2,F2,N,F).


fib(1,1).
fib(2,1).
fib(N,W) :- 
    N>2,
    N1 is N-1,
    N2 is N-2,
    fib(N1,W1),
    fib(N2,W2),
    W is W1+W2,
    !.
    

fibBU(N,X) :- fibBU(1,1,1,N,X). 
fibBU(N,X,_,N,X) :- !. 
fibBU(N1,X1,X2,N,X) :- N2 is N1+1, X3 is X1+X2, fibBU(N2,X2,X3,N,X).







gold(N,W) :- N1 is N-1, fibBU(N1,F1), fibBU(N,F2), W is F2/F1.