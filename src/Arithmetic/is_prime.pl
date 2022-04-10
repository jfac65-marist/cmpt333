is_prime(2).
is_prime(3).
is_prime(X) :- is_prime(2,X).

is_prime(Y,X) :-
    X > 3,
    X > Y*Y,
    X mod Y =\= 0,
    Y1 is Y + 1,
    is_prime(Y1,X).

is_prime(Y,X) :- X < Y*Y.
