% prime_factors.pl
% Determine the prime factors of a given positive integer.
:- ensure_loaded(is_prime).

prime_factors(0,[]).
prime_factors(X,L) :- X > 0, prime_factors(2,[],X,L).

prime_factors(I,T,X,L) :-
    I =< X,
    is_prime(I),
    X mod I =:= 0,
    append(T,[I],T1),
    X1 is X // I,
    prime_factors(I,T1,X1,L).

prime_factors(I,T,X,L) :-
    I =< X,
    I1 is I + 1,
    prime_factors(I1,T,X,L).

prime_factors(_,L,1,L).

