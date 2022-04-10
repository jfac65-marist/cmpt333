replace_var_args(X,[L1|L],Y) :-
    replace_one_arg(X,L1,Y1),
    replace_var_args(Y1,L,Y).

replace_var_args(X,[],X).

replace_one_arg(X,E,Y) :-
    functor(X,F,N),
    functor(Y,F,N),
    replace_arg(1,N,X,E,Y).

replace_arg(I,N,X,E,Y) :-
    I < N,
    arg(I,X,A1),
    var(A1),
    args(I,Y,E).



