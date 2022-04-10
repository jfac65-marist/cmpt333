% coprime.pl
% Determine whether two positive integer numbers are coprime.

:- ensure_loaded(gcd).

coprime(X,Y) :- gcd(X,Y,1).
