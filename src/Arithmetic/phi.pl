% phi.pl
% Euler’s so-called totient function phi(m) is defined as the number of positive
% integers r (1 <= r < m) that are coprime to m.
%
:- ensure_loaded(coprime).
:- arithmetic_function(totient_phi/1).

totient_phi(1,1).
totient_phi(M,R) :- phi(1,0,M,R).

% The numbers are coprime, so increment the count
phi(X,Y,M,R) :-
    X < M,
    coprime(X,M),
    X1 is X + 1,
    Y1 is Y + 1,
    phi(X1,Y1,M,R).
% The numbers are not coprime. Only increment the index
phi(X,Y,M,R) :-
    X < M,
    X1 is X + 1,
    phi(X1,Y,M,R).
% Index reached to maximum value
phi(M,R,M,R).

