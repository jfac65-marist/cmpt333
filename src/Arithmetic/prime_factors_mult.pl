% prime_factors_mult.pl
% Determine the prime factors of a given positive integer.
:- ensure_loaded(is_prime).

prime_factors_mult(0,[]).
prime_factors_mult(X,L) :- X > 0, prime_factors_mult(2,[],0,X,L).

prime_factors_mult(I,T,C,X,L) :-
    I =< X,
    is_prime(I),
    X mod I =:= 0,
    C1 is C + 1,
    X1 is X // I,
    prime_factors_mult(I,T,C1,X1,L).

prime_factors_mult(I,T,C,X,L) :-
    is_prime(I),
    C > 0,
    append(T,[[I,C]],T1),
    I1 is I + 1,
    prime_factors_mult(I1,T1,0,X,L).

prime_factors_mult(I,T,_,X,L) :-
    I =< X,
    I1 is I + 1,
    prime_factors_mult(I1,T,0,X,L).

prime_factors_mult(_,L,_,1,L).

