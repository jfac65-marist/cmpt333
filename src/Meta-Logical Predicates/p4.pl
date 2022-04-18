remove_nth(N,List,List2) :-
    remove_nth(1,N,List,List2).

remove_nth(I,N,[],[]) :- I =< N.

remove_nth(I,N,[X|List],[X|List2]) :-
    I < N,
    I1 is I + 1,
    remove_nth(I1,N,List,List2).

remove_nth(N,N,[_|List],List).