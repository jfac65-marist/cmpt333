% gcd.pl
% Calculates the GCD of two integers
%
gcd(X,0,X).
gcd(X,Y,G) :- Y > 0, Z is X mod Y, gcd(Y,Z,G).

% Make it an arithmetic function
arithmetic_function(gcd/2).
