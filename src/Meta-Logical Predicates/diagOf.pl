:- ensure_loaded(p3).

diagOf(Matrix,Diag) :-
    functor(Matrix,mat,N),
    diagOf(1,N,Matrix,Diag,[]).

diagOf(I,N,Matrix,Diag,Acc) :-
    I < N,
    index(Matrix,[I,I],Elem),
    I1 is I + 1,
    append(Acc,[Elem],Acc2),
    diagOf(I1,N,Matrix,Diag,Acc2).

diagOf(N,N,Matrix,Diag,Acc) :-
    index(Matrix,[N,N],Elem),
    append(Acc,[Elem],Diag).