:- ensure_loaded(nth).

index(Matrix,[I],Elem) :-
    Matrix =.. [mat|Values],
    nth(I,Values,Elem).

index(Matrix,[I|List],Elem) :-
    Matrix =.. [mat|MatElem],
    nth(I,MatElem,Rest),
    index(Rest,List,Elem).

    