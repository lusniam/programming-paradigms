czyLista([]).
czyLista([_|T]) :- czyLista(T).

czyLista2([]). 
czyLista2([_|T]) :- czyLista2(T),write(T).

czyLista3([]). 
czyLista3([_|T]) :- write(T),czyLista3(T).

ostatni([X],X). 
ostatni([_|T],X) :- ostatni(T,X),!.

isMember(X,[Y|_]) :- X=Y. 
isMember(X,[_|Y]) :- isMember(X,Y).