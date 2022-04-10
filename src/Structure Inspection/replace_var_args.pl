replace_var_args(Old,LARGS,New):-
    create_var_list(Old,LIST),
    unify_var(LIST,LARGS),
    New = Old.

unify_var([],_).
unify_var(_,[]).
unify_var([A|T],[A|Z]):- unify_var(T,Z).
%
% create_var_list(Term, List) creates a list of variables from the
% a term.
create_var_list(X,Y) :-
    compound(X),
    X=..[_|X1],
    process_list(X1,Y1),
    flatten(Y1,Y2),
    get_vars(Y2,Y).

%
% Navigate all the ellements of a list and recursively process the compound terms.
% Copy the atoms
process_list([X|Xs],[X|Ys]) :-
    atom(X),
    process_list(Xs,Ys).

% Copy the variables
process_list([X|Xs],[X|Ys]) :-
    var(X),
    process_list(Xs,Ys).

% Recursively process the compound terms.
process_list([X|Xs],[Y|Ys]) :-
    compound(X),
    create_var_list(X,Y),
    process_list(Xs,Ys).

% Base case
process_list([],[]).

% Get only the variables from the list
get_vars([X|Xs],[X|Ys]) :-
    var(X),
    get_vars(Xs,Ys).

% Skip over nonvars
get_vars([X|Xs],Ys) :-
    nonvar(X),
    get_vars(Xs,Ys).

get_vars([],[]).
