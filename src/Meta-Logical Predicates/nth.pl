nth(1,[Elem|_],Elem).

nth(N,[_|List],Elem) :-
    N > 1,
    N1 is N - 1,
    nth(N1,List,Elem).