insert_nth(N,Elem,List,List2) :-
    insert_nth(1,N,Elem,List,List2).

insert_nth(I,N,Elem,[],[Elem]) :- I =< N.

insert_nth(I,N,Elem,[X|List],[X|List2]) :-
    I < N,
    I1 is I + 1,
    insert_nth(I1,N,Elem,List,List2).

insert_nth(N,N,Elem,List,[Elem|List]).