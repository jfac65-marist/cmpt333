:- redefine_system_predicate(=..(_,_)).

Term =.. [F|Args] :-
    functor(Term,F,N), args(N,[],Term,Args).

args(I, Acc,Term,Args) :-
    I > 0, arg(I,Term,Arg), I1 is I-1, args(I1,[Arg|Acc],Term,Args).
args(0,Args,_,Args).