ile([],0).
ile([_|T],W) :- ile(T,W1), W is W1+1.

ile2(L,W) :- ile2(L,0,W).
ile2([],W,W).
ile2([_|T],S,W) :- S1 is S+1, ile2(T,S1,W).

suma([],0).
suma([H|T],W) :- suma(T,W1), W is W1+H.

suma2(L,W) :- suma2(L,0,W).
suma2([],W,W).
suma2([H|T],S,W) :-
    S1 is S+H,
    suma2(T,S1,W).